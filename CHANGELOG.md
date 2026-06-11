# Changelog

All notable changes to this project are documented here.
Format follows [Keep a Changelog](https://keepachangelog.com/en/1.1.0/).

---

## [Unreleased]

### Added
- **Matrix page** — Dedicated page for the Process Decision Matrix (interactive diagnostic in development). Removed from Calculators page, now lives at `/matrix/`.
- **About page** — Builder background, site mission, and contribution guide at `/about/`.
- **README** — Full project documentation with stack, local dev, and dual-license explanation.
- **LICENSE** — MPL-2.0 (code) and CC BY-NC 4.0 (content) documented.
- No-vendor-agenda messaging in hero and About section.
- **Weather widget on Matrix page** — Environmental Telemetry widget carried over from Calculators page; CSS custom properties scoped to `body.matrix` to match toolkit panel styling.
- **Weather widget alarm states** — Amber glow (warn) and pulsing red glow (alarm) applied dynamically when heat index exceeds thresholds or NWS alerts reach Severe/Extreme severity. Two independent signals combined via `Math.max()`.
- **Guides index banner** — "Under Development" status bar added to the guides index page matching the Matrix page SCADA aesthetic.
- **Individual guide draft banners** — Conditional draft notice rendered on each field guide page when `status: draft` is set in front matter.
- **GitHub Actions — CI** (`.github/workflows/ci.yml`): runs pre-commit hooks and Hugo build on every push/PR to master or main.
- **GitHub Actions — Preview** (`.github/workflows/preview.yml`): deploys a Cloudflare Workers preview per PR, runs Lighthouse against four pages, and posts/updates a PR comment with the preview URL table and Lighthouse score table.
- **GitHub Actions — Cleanup** (`.github/workflows/cleanup.yml`): deletes the Cloudflare preview worker when a PR is closed.
- **Lighthouse CI config** (`.lighthouserc.yml`): accessibility errors block at ≥0.90; performance, best practices, and SEO warn at 0.80/0.85/0.90 respectively.

### Changed
- Site redesign: deep navy (slate-900) base palette, sky-blue (#38bdf8) primary accent, Inter typography replacing Barlow Condensed.
- Home page restructured: centered hero → stats strip → module cards → about section.
- About section on home page refocused on site mission; personal bio moved to `/about/`.
- Inner pages (Calculators, Reference, Guides) use compact `page-header` with breadcrumb navigation.
- Matrix nav entry added between Guides and About.
- **Theme renamed** from `hypercat-theme` to `scada-theme` across all config, templates, service worker, and documentation.

---

## [0.1.0] — Initial Release

### Added
- 12 process calculators across three sections: Activated Sludge & Hydraulics, Solids Handling, Digester Operations
  - SVI, F/M Ratio, MCRT, RAS Rate, Surface Loading Rate, HRT, Weir Overflow Rate, Mass Loading, Chemical Dosing, Solids Loading Rate, VSR, VS Loading Rate, Digester Detention Time
- Unit Converter (MGD → GPM/GPH/CFS/L·s, mass loading)
- Temperature Converter with DO saturation (Benson & Krause formula)
- Reference tables: DO Operating Ranges, pH Targets, Loading Rate Benchmarks, Unit Conversions
- Field Guides: Plant Startup, Upset Response, Seasonal Adjustments, Dewatering Operations, Digester Management
- Live weather widget using Open-Meteo API with geolocation, heat advisory thresholds, and 8-cell telemetry display
- SCADA-style calculator interface with real-time computation on input
