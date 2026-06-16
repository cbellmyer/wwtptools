# Changelog

All notable changes to this project are documented here.
Format follows [Keep a Changelog](https://keepachangelog.com/en/1.1.0/).

---

## [0.4.0] — 2026-06-22

### Added

- **Field guides — category grouping** — Guides index now organizes guides into four named sections: Operations, Troubleshooting, Site, and Laboratory Methodology. Each section renders as a labeled group with its own color accent: blue (Operations), amber (Troubleshooting), green (Site), violet (Laboratory). `--violet` / `--violet-dim` added to the design token palette.
- **Laboratory category — five guides (all draft)** — New guide category for lab test procedures and analytical methods:
  - *Settleometer Test / SVI Calculation* — 30-minute procedure, SVI formula with worked example, interpretation table (< 80 to > 300 mL/g), common errors including compaction-limited settling at high MLSS.
  - *Alkalinity Titration* — 0.02N H₂SO₄ titration to pH 4.5 endpoint, ×10 shortcut factor derivation, target ranges for activated sludge (> 100 mg/L) and anaerobic digestion (1,500–3,000 mg/L), VFA:alkalinity ratio interpretation.
  - *pH Meter Calibration and Use* — Two-point and three-point calibration procedure, buffer selection, field measurement technique, electrode storage and cleaning by fouling type, slope interpretation (95–105% acceptable range).
  - *TSS and VSS Analysis* — Gravimetric procedure: filter pre-ignition, sample volume selection by matrix, filtration, 103–105°C drying for TSS, 550°C ignition for VSS, both calculations from a single filter run.
  - *DO Meter Calibration and Field Use* — Membrane vs. optical sensor types, air-saturation calibration with barometric pressure correction, field measurement technique, membrane replacement procedure, polarization time requirement.

### Changed

- **Field guide categories restructured** — Existing guides reorganized across the four new categories. Plant Startup and Emergency Power Interruption moved from Operations to Site (whole-plant / infrastructure scope). Dewatering Operations and Digester Management moved from Solids Handling to Operations.

### Fixed

---

## [0.3.0] — 2026-06-16

### Added

- **Pie Wheels — interactive formula reference** — New "Pie Wheels — Tap to Solve" section on the Calculators page. 12 circular formula diagrams rendered as SVG Web Components: Area of Circle, Rectangle, Right Triangle; EMF; Feed Rate; Flow Rate; Force; Loading Rate; Mass; Volume of Cone, Cylinder, Rectangular Tank. Tap any variable segment to solve for that value; inputs appear for all known values and the result updates live. Shaded segments are fixed constants (0.785, 8.34, ½, ⅓) and cannot be selected. Squared variables (Diameter²) handle exponentiation and square root automatically. Mobile-responsive grid collapses to single column at 480px. Each card has a reset button (↺) that clears all inputs and returns the wheel to its default state.
- **Lighthouse desktop CI** — Added `.lighthouserc.desktop.yml` with `preset: desktop` and tighter performance threshold (0.85 warn vs 0.80 mobile). Workflow now runs two Lighthouse passes per PR; PR comment shows separate mobile and desktop score tables in a single updating comment.
- **Weather widget cold advisories** — Added cold weather advisory levels mirroring the heat advisory structure: COLD ADVISORY (feels like ≤ 15°F, amber), COLD WARNING (≤ 0°F, orange), EXTREME COLD (≤ −20°F, red). Uses `apparent_temperature` from Open-Meteo, which already incorporates wind chill. Panel alarm/warn glow triggers on cold conditions the same as heat. `_coldLevel` tracked independently from `_heatLevel` so both signals feed `updateAlarm()` via `Math.max()`.
- **Reference page — three new tables** — Alkalinity Targets & Consumption (target ranges, nitrification draw at 7.14 mg/mg NH₄⁺-N, denitrification recovery, supplement chemicals); Chemical Feed Reference (typical doses and application notes for alum, ferric chloride, sodium hypochlorite, cationic polymer for belt press/GBT/DAF, bisulfite, caustic); Biosolids Classification (Class A vs Class B under 40 CFR Part 503 — pathogen standards, VAR requirements, VSR thresholds, land application restrictions, common treatment paths).
- **Field guide stubs — three new drafts** — Secondary Clarifier Troubleshooting (blanket control, rising sludge, effluent quality), Aeration & Blower Management (DO control, blower operations, demand swings), Wet Weather Operations (hydraulic management, protecting biology, SSO prevention). All published as drafts with intro context and section placeholders.
- **Home page — "Recently Updated" strip** — New content strip between module cards and about section showing what was recently added or changed, driven by `data/whats_new.yaml`. Update the YAML file to reflect new content; the strip renders automatically.
- **Dynamic site counts** — Stats strip and module card counts now driven by Hugo data files and page queries rather than hardcoded values. Guide count is computed from live Hugo pages. Calculator and reference table counts read from `data/calculators.yaml` and `data/reference_tables.yaml` respectively — add an entry to either file and the count updates on next build.
- **Print stylesheet** — `@media print` rules added to `wwtptools.css`: hides nav chrome and interactive controls, forces white background with black text, formats reference tables for paper with visible borders, adds page-break hints, and appends URLs after external links.

### Changed

- **Site renamed** — "WWTP Tools" renamed to "The Operator's Toolkit" across all page templates, the Hugo config (`title`, `baseURL` updated to `https://wwtp.tools/`), and README. Breadcrumb home links, browser tab titles, and module card copy updated throughout.
- **Hero title** — Removed "Digital" from the home page `<h1>`; now reads "The Operator's Toolkit" consistently with the site title.
- **Field guide — Dewatering Operations** — Added Gravity Belt Thickener chapter covering polymer conditioning for GBTs, operating variables (belt speed, feed rate, wash water, tracking), process train placement, and performance targets (85–95% solids capture). Chapters rearranged for process-train order: Overview → GBT → Sludge Conditioning → Jar Testing → Equipment Optimization. Published.
- **Field guide — Digester Management** — Added Digester Types chapter covering Conventional (low-rate), High-Rate Mesophilic (CSTR), Thermophilic, Two-Stage/TPAD, and egg-shaped design variant; each with pros and cons from an operator perspective. Chapters rearranged: Overview → Digester Types → Key Indicators → Loading Management → Failure Modes. Recovery procedure moved from Loading Management into Failure Modes where it belongs. Published.
- **Field guide — Emergency Power Interruption** — Fully written, replacing all chapter stubs. Added new Flow Management chapter covering the two non-negotiables: flow in (wet well management, time-to-overflow formula, collection system lift station status, inflow throttling) and flow out (gravity vs. pumped discharge, UV/chlorination continuity, effluent quality monitoring during extended outages). Immediate response sequence updated to confirm influent pumping and effluent discharge before notifications. Generator Operations load-management note updated to prioritize pumping above all other loads. Power Restoration sequence and post-event documentation updated to include remote lift station status and effluent disinfection coverage. Published.
- **Field guide — Upset Response** — Added escalation section covering proactive communication with superintendent and process engineer before compliance issues become permit events; documentation during upset as the difference between a notice of violation and a recognized good-faith response. Published.
- **Field guides — all published** — Plant Startup, Seasonal Adjustments, Dewatering Operations, Digester Management, Upset Response, and Emergency Power Interruption all moved from `status: draft` to `status: published`. Draft banner no longer shown on any guide.
- **About page** — Updated contribution section language; removed "least complete part of the site" framing now that guides section has grown to nine entries.

### Fixed

- **Lighthouse CI — preset audit overrides and build fixes** — Several audits from the `lighthouse:no-pwa` preset were set to `error` level and blocking CI despite being intentional design decisions or CI-environment artifacts. `geolocation-on-start`, `network-dependency-tree-insight`, and `cls-culprits-insight` overridden to `off` (weather widget uses geolocation by design; network dependency and CLS insight audits are triggered by Google Fonts async loading). `errors-in-console` downgraded to `warn` so CI surfaces but does not block on network errors from the weather widget in the headless test environment. Duplicate artifact upload conflict (409) resolved by setting `uploadArtifacts: false` on both mobile and desktop steps — PR comment scores use local `resultsPath` outputs and are unaffected. Hugo build updated to `--minify`, resolving the `unminified-javascript` audit by minifying inline scripts in HTML output.
- **Pre-commit violations in guide content** — Markdownlint rule violations (line length, list formatting, heading style), Prettier reformatting, codespell corrections, and trailing whitespace fixed across newly written field guide markdown files.
- **Accessibility — `aria-hidden-focus` on Pie Wheels** — The Pie Wheel SVG was marked `aria-hidden="true"` while containing `<path>` elements with `tabindex="0" role="button"`, violating ARIA rules (focusable descendants inside a hidden container). Fixed by replacing `aria-hidden` on the `<svg>` with `role="group" aria-label="[title] formula"`. All interactive path elements now carry descriptive `aria-label="Solve for [variable]"` (or "Solving for..." when active). Decorative elements (circles, lines, text labels) individually marked `aria-hidden="true"` so screen readers only announce the interactive controls.
- **Accessibility — `link-in-text-block` on About and Matrix pages** — In-paragraph anchor elements on the About and Matrix pages relied solely on color to distinguish links from surrounding text, failing WCAG SC 1.4.1. Added `text-decoration: underline` with `text-decoration-color: var(--blue-dim)` and `text-underline-offset: 2px` targeting `p a` within `.about-content`, `.story-content`, `.matrix-overview`, and `.matrix-contribute`. CTA link styles are unaffected.
- **Accessibility — `color-contrast` on Calculators page** — SCADA label color `--tk-label` was `#546878`, giving ~2.8:1 contrast against dark panel backgrounds (`--tk-inner: #1a2232`), well below the 4.5:1 WCAG AA threshold. Lightened to `#849fb5` (~5.6:1 on `--tk-inner`, passes all SCADA panel backgrounds including `--tk-sub`). Also corrected `.tk-formula-label` from `var(--yellow-dim)` (`#0284c7`, 4.48:1) to `var(--yellow)` (`#38bdf8`, 7.9:1) which was also marginally failing on the notes background.
- **Accessibility — `font-size` on Guides and Calculators pages** — Guide card elements (category badge, draft status, description, CTA, meta section label, back link) were set as low as `0.44rem` (7.9px), well below Lighthouse's 12px floor. Calculator page content text (calc description, field labels, input text, result label, result unit, formula text, impact text, unit converter rows) was similarly tiny at `0.38–0.55rem`. All bumped to `0.72–0.75rem` (13–13.5px). Decorative SCADA structural labels (eyebrow, clock, section label, etc.) are short strings that do not push page text below Lighthouse's 60% legibility threshold and were left unchanged to preserve the terminal aesthetic.

---

## [0.2.0] — 2026-06-12

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
- **GitHub Actions — Pre-commit** (`.github/workflows/pre-commit.yml`): runs pre-commit checks on every push/PR with auto-fix commits, Hugo build validation, HTML structure checks, and config and link validation.
- **GitHub Actions — Lighthouse** (`.github/workflows/lighthouse.yml`): runs Lighthouse CI on PRs for content changes and posts scores as a PR comment.
- **GitHub Actions — Monthly Rebuild** (`.github/workflows/monthly-rebuild.yml`): triggers a Cloudflare Pages rebuild on the 1st of each month to pick up any external data changes.
- **Lighthouse CI config** (`.lighthouserc.yml`): accessibility errors block at ≥0.90; performance, best practices, and SEO warn at 0.80/0.85/0.90 respectively.

### Fixed

- **Stylelint pre-commit hook** — Disabled `no-descending-specificity` (intentional CSS ordering that `--fix` cannot resolve without rewriting rule cascade) and `declaration-block-single-line-max-declarations` (preserves tabular BEM modifier formatting in `toolkit.css`). Hook now exits 0 cleanly.
- **Color contrast (WCAG AA)** — `--gray-dim` changed from `#475569` (slate-600, 1.93:1 on card backgrounds) to `#94a3b8` (slate-400, ~5.3:1 on `#1e293b`, ~6.8:1 on `#0f172a`). Affects `.module-count`, `.footer-tagline`, `.footer a`, and related elements. Lighthouse accessibility 93 → 100.
- **Missing `<main>` landmark** — Added `<main>` wrapper to all seven page layout templates (`home.html`, `about.html`, `reference.html`, `guides.html`, `guide.html`, `matrix.html`, `toolkit.html`). Required for WCAG screen-reader navigation.
- **`hreflang` absolute URL** — Changed `href="{{ .RelPermalink }}"` to `href="{{ .Permalink }}"` in `head.html`. Lighthouse SEO requires absolute URLs in alternate link tags. Lighthouse SEO 91 → 100.
- **Canonical tag absolute URL** — Changed canonical `<link>` to use `.Permalink` (absolute) instead of `.RelPermalink` (relative).

### Changed

- **Google Fonts loading** — Changed from render-blocking `rel="stylesheet"` to async `rel="preload" as="style" onload` pattern with `<noscript>` fallback. Eliminates parser-blocking network request on first paint.
- Site redesign: deep navy (slate-900) base palette, sky-blue (#38bdf8) primary accent, Inter typography replacing Barlow Condensed.
- Home page restructured: centered hero → stats strip → module cards → about section.
- About section on home page refocused on site mission; personal bio moved to `/about/`.
- Inner pages (Calculators, Reference, Guides) use compact `page-header` with breadcrumb navigation.
- Matrix nav entry added between Guides and About.
- **Theme renamed** from `hypercat-theme` to `scada-theme` across all config, templates, service worker, and documentation.
- **Deployment migrated from Cloudflare Workers to Cloudflare Pages** — removed wrangler-action-based PR preview and cleanup workflows; Pages handles preview deployments and teardown automatically.

---

## [0.1.0] — Initial Release

### Added (Initial Release)

- 12 process calculators across three sections: Activated Sludge & Hydraulics, Solids Handling, Digester Operations
  - SVI, F/M Ratio, MCRT, RAS Rate, Surface Loading Rate, HRT, Weir Overflow Rate, Mass Loading, Chemical Dosing, Solids Loading Rate, VSR, VS Loading Rate, Digester Detention Time
- Unit Converter (MGD → GPM/GPH/CFS/L·s, mass loading)
- Temperature Converter with DO saturation (Benson & Krause formula)
- Reference tables: DO Operating Ranges, pH Targets, Loading Rate Benchmarks, Unit Conversions
- Field Guides: Plant Startup, Upset Response, Seasonal Adjustments, Dewatering Operations, Digester Management
- Live weather widget using Open-Meteo API with geolocation, heat advisory thresholds, and 8-cell telemetry display
- SCADA-style calculator interface with real-time computation on input
