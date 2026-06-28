// SVGO configuration for diagrams and schematics (matrix zones, guide figures).
// Strips editor cruft and metadata while preserving viewBox (needed for
// responsive scaling) and any IDs used by CSS/JS hooks.
export default {
  multipass: true,
  js2svg: { indent: 2, pretty: false },
  plugins: [
    {
      name: 'preset-default',
      params: {
        overrides: {
          // Keep viewBox — removing it breaks responsive SVG scaling.
          removeViewBox: false,
          // Don't collapse IDs; some are referenced by CSS/JS or <use>.
          cleanupIds: false,
        },
      },
    },
    // Drop width/height so the SVG scales to its container (viewBox drives it).
    { name: 'removeDimensions' },
  ],
};
