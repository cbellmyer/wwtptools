# The Operator's Toolkit

Free process calculators, reference tables, and field guides for wastewater treatment plant operators. Built by an operator, for operators. No vendor relationships, no ads, no content that exists to sell you something.

**Live site:** [wwtp.tools](https://wwtp.tools)

---

## What's in the Toolkit

| Section             | Description                                                                                                                                                                                                                                                                                                                         |
| ------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Calculators**     | 12+ process calculators — activated sludge, hydraulics, solids handling, digester operations. Live results as you type.                                                                                                                                                                                                             |
| **Reference**       | 12 reference tables in four categories: Process Parameters (DO, pH, loading rates, temperature, conversions), Chemistry & Dosing, Solids & Biosolids, and Laboratory (filamentous organisms, standard methods).                                                                                                                     |
| **Field Guides**    | 9+ published operational guides organized into four categories: Operations, Troubleshooting, Site, and Laboratory. Laboratory guides are draft; all others are published.                                                                                                                                                           |
| **Decision Matrix** | _(Draft)_ Guided, symptom-driven process troubleshooting. Activated Sludge zone is live — pick a treatment area, choose the symptom you're seeing, and follow the branching diagnostic path to probable causes and corrective actions, with schematic figures on appearance-based steps. Additional treatment zones in development. |

---

## Stack

- [Hugo](https://gohugo.io/) static site generator (v0.160.1 extended)
- [scada-theme](https://github.com/cbellmyer/wwtptools) as base theme with project-level layout overrides
- [Cloudflare Pages](https://pages.cloudflare.com/) for deployment
- Vanilla JavaScript Web Components for calculators and weather widget (no framework, no bundler)
- [Open-Meteo](https://open-meteo.com/) for the live weather widget (free, no API key required)

---

## Local Development

**Prerequisites:** Hugo Extended ≥ 0.160.1

```bash
git clone https://github.com/cbellmyer/wwtptools.git
cd wwtptools
bash ./build.sh
```

`build.sh` builds into `content/public/`. To run the development server with live reload:

```bash
cd content
hugo server --buildDrafts
```

The site will be available at `http://localhost:1313`.

### Project Structure

```
wwtptools/
├── content/                  # Hugo site root
│   ├── hugo.yaml             # Site config and nav menu
│   ├── content/              # Content stubs and guide markdown files
│   │   └── guides/           # Individual field guide .md files
│   ├── data/                 # YAML data files (calculators, reference tables, decision matrix, what's new)
│   ├── layouts/              # Custom page layouts (override theme)
│   │   ├── partials/         # Header, footer, head extensions
│   │   └── *.html            # Page templates: home, toolkit, reference, guides, guide, matrix, about
│   ├── assets/css/           # Custom CSS
│   │   ├── extended/wwtptools.css  # Site styles, design tokens (palette, radii, shadows, motion), components
│   │   └── toolkit.css       # Calculator interface (card-based tool UI)
│   └── themes/scada-theme/
├── build.sh
├── CHANGELOG.md
└── README.md
```

---

## License

This project uses two licenses because it contains both software and content.

**Source code** — templates, JavaScript, CSS, and build scripts — is licensed under the **[Mozilla Public License 2.0 (MPL-2.0)](LICENSE)**. MPL-2.0 is a file-level copyleft license: you can use, modify, and distribute the code, but modifications to MPL-licensed files must be released under MPL-2.0 when distributed.

**Site content** — text, reference data, field guides, and calculator descriptions — is licensed under **[Creative Commons Attribution-NonCommercial 4.0 International (CC BY-NC 4.0)](https://creativecommons.org/licenses/by-nc/4.0/)**. You may share and adapt the content for non-commercial purposes with attribution.

These licenses apply to different parts of the project and do not conflict. The site footer reflects the CC BY-NC 4.0 content license, which is what matters to users visiting the site. Developers forking or building on the codebase are subject to MPL-2.0 for source files.

---

## Contributing

All contributions are welcome. The [About page](https://wwtp.tools/about/) has more context on what kinds of contributions are most useful.

- **Issues** — Use [GitHub Issues](https://github.com/cbellmyer/wwtptools/issues) for data corrections, calculator bugs, missing reference values, or requests for new tools
- **Pull Requests** — Welcome for content additions, new calculators, bug fixes, and UI improvements
- **Field experience** — If you work in wastewater operations and want to contribute guide or decision matrix content, open an issue describing what you'd add — no coding required
- **Email** — Prefer to keep it off a public tracker? Reach out at [hello@wwtp.tools](mailto:hello@wwtp.tools)

When contributing content, note that submitted content will be licensed under CC BY-NC 4.0 as part of the site. Code contributions will be under MPL-2.0.

---

## Changelog

See [CHANGELOG.md](CHANGELOG.md) for version history.

---

**Also hosted on GitLab:** https://gitlab.com/roryredpanda/wwtptools
