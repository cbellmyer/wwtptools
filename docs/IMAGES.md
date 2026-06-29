# Images, graphics & GIFs

How visual content is optimized on this site, and what you do as an author.

## TL;DR for authors

1. **Stills (PNG/JPEG):** drop the file next to your guide's `.md` (a page
   bundle) or under `content/assets/images/`, then reference it. Hugo does the
   rest — WebP, responsive sizes, lazy loading.
   ```markdown
   ![Aeration basin layout](aeration-basin.png)
   ```
   or, with a caption:
   ```markdown
   {{< figure src="aeration-basin.png" alt="Aeration basin layout"
              caption="Fine-bubble diffuser grid" >}}
   ```
2. **Diagrams/schematics:** use **SVG**. It's resolution-independent and tiny.
   SVGO optimizes it automatically on commit.
3. **Motion (was a GIF):** convert it to video first, then embed:
   ```bash
   scripts/convert-images.sh path/to/clip.gif
   ```
   ```markdown
   {{< video src="clip" poster="clip.png" alt="What the clip shows" >}}
   ```
   Don't commit large raw `.gif` files — the pre-commit guard rejects them.

## Why it's built this way

Hugo Extended (the version pinned in `.hugo-version`) has a full image pipeline
built in. We lean on it instead of a separate Node/JS image framework:

| Need                               | Handled by                                             |
| ---------------------------------- | ------------------------------------------------------ |
| Resize, WebP, responsive `srcset`  | Hugo Extended (build time)                             |
| Markdown `![]()` auto-optimization | `layouts/_default/_markup/render-image.html`           |
| Captioned / linked figures         | `layouts/shortcodes/figure.html`                       |
| Explicit responsive image          | `layouts/shortcodes/img.html`                          |
| The shared engine all three call   | `layouts/partials/responsive-image.html`               |
| Animated GIF → MP4/WebM            | `scripts/convert-images.sh` (ffmpeg) + `{{< video >}}` |
| SVG optimization                   | SVGO (`svgo.config.mjs`, pre-commit)                   |
| Repo/build bloat guard             | `scripts/check-image-sizes.sh` (pre-commit)            |

### The engine

`responsive-image.html` resolves the source (page bundle first, then
`assets/`) and:

- **Raster** (png/jpeg/tiff/bmp) → a `<picture>` with a WebP `<source>` plus an
  original-format fallback `<img>`, both with width-described `srcset`
  (480/800/1200/1600px, never upscaled past the source), `loading="lazy"`,
  `decoding="async"`, and intrinsic `width`/`height` + `aspect-ratio` so there's
  no layout shift (CLS).
- **SVG / GIF / remote** → passed through unchanged (we can't usefully resize
  vectors, and GIFs should be video — see below).

## Keeping Hugo from being overwhelmed

- **Derivatives are committed.** Hugo writes processed variants to
  `content/resources/`, which is checked into git (see `.gitignore`). On
  Cloudflare the build does **zero** image processing when the derivatives are
  present; if one is missing or stale, Hugo just regenerates it. No CI cache
  setup required.
- **Source masters stay small.** Keep raster masters ≤ ~2500px on the long edge.
  Hugo generates everything smaller. `check-image-sizes.sh` rejects raster
  masters over 1500 KB and raw GIFs over 512 KB (tunable via `RASTER_MAX_KB` /
  `GIF_MAX_KB`).
- **Motion is video, not GIF.** A multi-MB animated GIF becomes a ~100–300 KB
  MP4/WebM. This is the single biggest weight saving for the guides and matrix.
- **Edge caching.** Static output is served by Cloudflare and cached at the edge;
  fingerprinted derivative filenames are safe to cache indefinitely.

## Stock stand-ins

`content/assets/images/stock/` holds placeholder art (`placeholder-diagram.svg`,
`placeholder-photo.png`). They demonstrate the pipeline end to end and are meant
to be **replaced** — if you fork this project, swap them for your own plant's
graphics. Nothing in published content should ship the placeholders.

## Local tooling

- `ffmpeg` — required only to run `scripts/convert-images.sh`
  (Windows: `winget install Gyan.FFmpeg`; macOS: `brew install ffmpeg`).
- `npm install` — pulls in `svgo` for `npm run optimize:svg` and the pre-commit
  hook.
