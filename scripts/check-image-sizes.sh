#!/bin/bash
#
# check-image-sizes.sh — pre-commit guard against media that would bloat the repo
# or overwhelm the build.
#
# Rules (applied to the file paths passed as arguments):
#   1. Animated GIFs over GIF_MAX_KB are rejected — convert them to MP4/WebM with
#      scripts/convert-images.sh and embed via {{< video >}}.
#   2. Raster source images (png/jpg/jpeg/tiff/bmp) over RASTER_MAX_KB are
#      rejected — downscale the master before committing (Hugo generates the
#      responsive variants; we never need a >~2500px master).
#
# Derivatives and vendored files are out of scope; pre-commit's own `exclude`
# already filters content/resources, content/public, and content/themes.
#
# Tunable via env vars.
set -euo pipefail

RASTER_MAX_KB="${RASTER_MAX_KB:-1500}"
GIF_MAX_KB="${GIF_MAX_KB:-512}"

filesize_kb() {
  # Portable size-in-KB (rounded up). Works on GNU and BSD/macOS stat.
  local bytes
  bytes=$(wc -c <"$1")
  echo $(( (bytes + 1023) / 1024 ))
}

status=0
for f in "$@"; do
  [ -f "$f" ] || continue
  ext="${f##*.}"
  ext="$(printf '%s' "$ext" | tr '[:upper:]' '[:lower:]')"
  kb=$(filesize_kb "$f")

  case "$ext" in
    gif)
      if [ "$kb" -gt "$GIF_MAX_KB" ]; then
        echo "✗ $f (${kb} KB > ${GIF_MAX_KB} KB)" >&2
        echo "    Animated GIF too large. Convert it:" >&2
        echo "      scripts/convert-images.sh \"$f\"" >&2
        echo "    then embed with {{< video >}} and remove the .gif." >&2
        status=1
      fi
      ;;
    png|jpg|jpeg|tif|tiff|bmp)
      if [ "$kb" -gt "$RASTER_MAX_KB" ]; then
        echo "✗ $f (${kb} KB > ${RASTER_MAX_KB} KB)" >&2
        echo "    Raster master too large. Downscale to <=2500px before committing;" >&2
        echo "    Hugo generates the responsive 480/800/1200/1600px WebP variants." >&2
        status=1
      fi
      ;;
  esac
done

if [ "$status" -ne 0 ]; then
  echo "" >&2
  echo "Image size check failed. See scripts/check-image-sizes.sh and docs/IMAGES.md." >&2
fi
exit "$status"
