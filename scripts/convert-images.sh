#!/bin/bash
#
# convert-images.sh — author-time GIF -> MP4/WebM converter.
#
# Hugo Extended optimizes raster stills (PNG/JPEG -> WebP + srcset) at build
# time, but it cannot transcode animated GIFs. This script does that step so an
# animated GIF can be embedded with the {{< video >}} shortcode at a fraction of
# the file size (a multi-MB GIF typically becomes a ~100-300 KB MP4/WebM).
#
# It also emits a PNG poster frame (first frame) for the shortcode's poster=.
#
# Usage:
#   scripts/convert-images.sh path/to/clip.gif [more.gif ...]
#   scripts/convert-images.sh content/content/guides/   # all *.gif under a dir
#
# Outputs (next to each source .gif): clip.mp4, clip.webm, clip.png
# After conversion, embed with:
#   {{< video src="clip" poster="clip.png" alt="..." >}}
# and delete or stop committing the source .gif (the pre-commit guard rejects
# raw GIFs over the size limit).
#
set -euo pipefail

if ! command -v ffmpeg >/dev/null 2>&1; then
  echo "Error: ffmpeg not found. Install it:" >&2
  echo "  Windows: winget install Gyan.FFmpeg   |  macOS: brew install ffmpeg" >&2
  echo "  Debian/Ubuntu: sudo apt-get install ffmpeg" >&2
  exit 1
fi

if [ "$#" -eq 0 ]; then
  echo "Usage: $0 <file.gif | directory> [...]" >&2
  exit 1
fi

# Collect target GIFs from file and directory arguments.
gifs=()
for arg in "$@"; do
  if [ -d "$arg" ]; then
    while IFS= read -r -d '' f; do gifs+=("$f"); done \
      < <(find "$arg" -type f -iname '*.gif' -print0)
  elif [ -f "$arg" ]; then
    gifs+=("$arg")
  else
    echo "Warning: skipping '$arg' (not a file or directory)" >&2
  fi
done

if [ "${#gifs[@]}" -eq 0 ]; then
  echo "No .gif files found in the given paths." >&2
  exit 0
fi

for gif in "${gifs[@]}"; do
  base="${gif%.*}"
  echo "Converting: $gif"

  # yuv420p + even dimensions for broad MP4 (H.264) compatibility.
  scale="scale=trunc(iw/2)*2:trunc(ih/2)*2:flags=lanczos"

  # MP4 / H.264 — universal fallback.
  ffmpeg -y -loglevel error -i "$gif" \
    -movflags +faststart -pix_fmt yuv420p \
    -vf "$scale" \
    -c:v libx264 -crf 23 -preset slow -an \
    "${base}.mp4"

  # WebM / VP9 — smaller, preferred where supported.
  ffmpeg -y -loglevel error -i "$gif" \
    -vf "$scale" \
    -c:v libvpx-vp9 -crf 34 -b:v 0 -an \
    "${base}.webm"

  # Poster: first frame as PNG (Hugo will WebP-optimize it on build).
  ffmpeg -y -loglevel error -i "$gif" -vf "select=eq(n\,0)" -frames:v 1 \
    "${base}.png"

  echo "  -> ${base}.mp4  ${base}.webm  ${base}.png"
done

echo "Done. Embed with {{< video src=\"NAME\" poster=\"NAME.png\" alt=\"...\" >}}"
