---
title: "TSS and VSS Analysis"
description: "Gravimetric procedure for total and volatile suspended solids, filter preparation, drying and ignition protocol, and calculation of both values from a single sample."
layout: "guide"
category: "Laboratory"
status: "draft"
weight: 33
chapters:
  - id: "overview"
    label: "Overview"
  - id: "equipment"
    label: "Equipment & Materials"
  - id: "filter-prep"
    label: "Filter Preparation"
  - id: "filtration"
    label: "Sample Filtration"
  - id: "tss-calc"
    label: "TSS Drying & Calculation"
  - id: "vss-calc"
    label: "VSS Ignition & Calculation"
  - id: "errors"
    label: "Common Errors"
---

<div id="overview" class="story-chapter-label">[ Overview ]</div>

Total Suspended Solids (TSS) and Volatile Suspended Solids (VSS) are gravimetric tests — they measure mass directly by weighing a filter before and after capturing solids from a known sample volume.

TSS is the total mass of solids captured on the filter after drying. VSS is the fraction that burns off at 550°C — it represents the organic (volatile) portion of those solids, which in biological treatment is roughly equivalent to the active microbial mass. The remaining non-volatile fraction is Fixed Suspended Solids (FSS), primarily inorganic material like grit, calcium carbonate, and mineral precipitates.

**Why both values matter:**

In activated sludge, the VSS:TSS ratio is a health indicator. A healthy mixed liquor typically has a VSS:TSS ratio of 0.70–0.85. A declining ratio indicates the proportion of inert material is increasing — possible causes include accumulation of inorganic influent solids, chemical precipitation in the basin, or die-off of biological mass. A ratio below 0.60 in mixed liquor warrants investigation.

VSS is also used directly in F/M ratio calculations, where VSS is the denominator (active biomass), and in biosolids reporting where volatile solids reduction (VSR) is a regulatory requirement for Class B biosolids.

<div id="equipment" class="story-chapter-label">[ Equipment & Materials ]</div>

**Equipment:**

- Analytical balance (0.1 mg readability minimum; 0.01 mg preferred for small sample volumes)
- Oven set to 103–105°C for TSS drying
- Muffle furnace set to 550 ± 50°C for VSS ignition
- Desiccator with fresh desiccant (silica gel or similar)
- Vacuum filtration apparatus with flask, funnel, and clamp
- Forceps (metal, not rubber-tipped — rubber melts in the furnace)

**Materials:**

- Glass fiber filters, 1.5 µm nominal pore size (Whatman GF/C or equivalent) — **do not use membrane filters** for TSS/VSS; they don't tolerate ignition temperatures
- Aluminum weighing pans or crucibles for holding filters in the oven and furnace
- Sample collection containers (clean plastic or glass)

**Balance notes:**

Analytical balance precision matters. TSS in activated sludge mixed liquor at 2,500 mg/L, filtered through a 100 mL sample, gives roughly 250 mg of solids — well within the measurable range. At low concentrations (secondary effluent TSS < 10 mg/L), you may need to filter 500–1,000 mL to get a measurable mass difference. Weigh filters in the same location each time — drafts from HVAC vents introduce weighing error on an analytical balance.

<div id="filter-prep" class="story-chapter-label">[ Filter Preparation ]</div>

Glass fiber filters must be pre-cleaned and pre-weighed to establish a baseline (tare) weight before use. Filters from the factory contain trace organic binders that will burn off in the furnace and inflate your VSS result if not removed first.

**Pre-ignition procedure:**

1. Place new filters on aluminum pans.
2. Ignite at 550°C in the muffle furnace for at least 15 minutes.
3. Allow to cool slightly in the furnace (oven door cracked), then transfer to desiccator.
4. Cool in desiccator for at least 30 minutes.
5. Weigh each filter + pan to 0.1 mg. Record as W₁ (tare weight).
6. Store pre-ignited filters in the desiccator until use. Use within 24 hours; filters absorb moisture from the air and tare weight will drift.

If you are only running TSS (not VSS), pre-ignition is not required — you only need to pre-dry filters at 103–105°C for 1 hour, cool in desiccator, and tare weigh.

<div id="filtration" class="story-chapter-label">[ Sample Filtration ]</div>

**Sample volume selection:**

The goal is to capture 5–200 mg of solids on the filter. Too little and weighing error dominates; too much and the filter plugs before you've filtered a representative volume.

| Sample type | Suggested starting volume |
|---|---|
| Mixed liquor (MLSS ~2,000–3,500 mg/L) | 25–50 mL |
| RAS | 10–25 mL |
| Secondary effluent (< 30 mg/L) | 250–500 mL |
| Digester effluent / centrate | 25–50 mL |
| Raw influent | 50–100 mL |

If the filter plugs before the full volume is filtered, note the volume actually filtered and use that in your calculation.

**Filtration procedure:**

1. Assemble the filtration apparatus. Place the pre-weighed filter on the support.
2. Apply vacuum.
3. Wet the filter with a small volume of distilled water to seat it before filtering the sample.
4. Measure and pour the sample volume into the funnel.
5. After the sample has passed through, rinse the walls of the funnel with three successive 10 mL volumes of distilled water to transfer any adhering solids to the filter.
6. Continue vacuum for 2–3 minutes after filtration is complete to pull residual water through.
7. Using forceps, carefully transfer the filter to its labeled aluminum pan.

<div id="tss-calc" class="story-chapter-label">[ TSS Drying & Calculation ]</div>

**Drying:**

1. Place filters on aluminum pans in the oven at 103–105°C.
2. Dry for a minimum of 1 hour. For high-solids samples, dry for 2 hours.
3. Transfer pans to desiccator. Cool for at least 30 minutes.
4. Weigh each filter + pan. Record as W₂ (dried weight with solids).

**TSS calculation:**

TSS (mg/L) = (W₂ − W₁) × 1,000,000 ÷ sample volume (mL)

**Worked example:**

- W₁ (tare): 1.4823 g
- W₂ (after drying): 1.5448 g
- Sample volume: 25 mL

TSS = (1.5448 − 1.4823) × 1,000,000 ÷ 25 = 0.0625 × 1,000,000 ÷ 25 = **2,500 mg/L**

**Proceed immediately to VSS ignition** — do not let dried filters sit in the open air, as they will absorb moisture and W₂ will drift.

<div id="vss-calc" class="story-chapter-label">[ VSS Ignition & Calculation ]</div>

**Ignition:**

1. Transfer the dried filter + pan directly from the desiccator to the muffle furnace.
2. Ignite at 550 ± 50°C for 15–20 minutes.
3. Allow to cool briefly with the furnace door cracked, then transfer to desiccator.
4. Cool in desiccator for at least 30 minutes.
5. Weigh the filter + pan. Record as W₃ (ignited weight).

**VSS calculation:**

VSS (mg/L) = (W₂ − W₃) × 1,000,000 ÷ sample volume (mL)

FSS (mg/L) = TSS − VSS

VSS:TSS ratio = VSS ÷ TSS

**Continuing the worked example:**

- W₂ (dried): 1.5448 g
- W₃ (after ignition): 1.5262 g
- Sample volume: 25 mL

VSS = (1.5448 − 1.5262) × 1,000,000 ÷ 25 = 0.0186 × 1,000,000 ÷ 25 = **744 mg/L**

FSS = 2,500 − 744 = **1,756 mg/L** *(this is unusually high for mixed liquor — in practice a VSS:TSS of ~0.76–0.80 is typical)*

VSS:TSS = 744 ÷ 2,500 = **0.30** *(abnormally low — would indicate heavy inorganic loading or a calculation check is needed)*

<div id="errors" class="story-chapter-label">[ Common Errors ]</div>

**Not pre-igniting filters before VSS runs:** Factory binders in glass fiber filters burn off at 550°C and inflate VSS. Pre-ignite all filters before use when VSS will be measured.

**Drafts at the balance:** Analytical balances are sensitive to air movement. Close the draft shield during weighing. HVAC vents, fans, and even body heat near an open balance will cause readings to drift. Always allow the balance reading to stabilize fully before recording.

**Insufficient drying time:** Under-dried filters retain moisture, inflating W₂ and therefore TSS. If oven capacity forces a shorter drying time, verify by re-weighing after another 30 minutes — if the weight changed by more than 0.5 mg, continue drying.

**Filters absorbing moisture after drying:** Once removed from the oven, filters must go directly into a desiccator. If a filter is left on the bench while you do other tasks, it will reabsorb moisture. Time from oven → desiccator → weigh should be as short as practical.

**Wrong sample volume recorded:** The volume actually filtered — not the intended volume — goes into the calculation. If the filter plugged at 35 mL of a 50 mL intended pour, your result is based on 35 mL.

**Using membrane filters instead of glass fiber:** Membrane filters (0.45 µm, polycarbonate or cellulose nitrate) are incompatible with 550°C ignition. They will melt or ignite, destroying the filter and pan. Use only glass fiber filters for combined TSS/VSS runs.
