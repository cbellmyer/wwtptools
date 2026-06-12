---
title: "Digester Management"
description: "Anaerobic digester loading, VSR monitoring, alkalinity control, and the two failure modes to watch for."
layout: "guide"
category: "Solids Handling"
status: "draft"
weight: 5
chapters:
  - id: "overview"
    label: "Overview"
  - id: "failure-modes"
    label: "Failure Modes"
  - id: "monitoring"
    label: "Key Indicators"
  - id: "loading"
    label: "Loading Management"
---

<div id="overview" class="story-chapter-label">[ Overview ]</div>

Anaerobic digesters are the most sensitive biological process in the plant. The methanogens that produce biogas are slow-growing, easily inhibited by pH swings, and unforgiving of sudden loading changes.

Unlike activated sludge, which can recover from upsets in days, a destabilized digester can take weeks to return to performance. Prevention — through consistent monitoring and conservative loading — is far less costly than recovery.

<div id="failure-modes" class="story-chapter-label">[ Failure Modes ]</div>

The two most common failure modes are: **organic overloading** and **nutrient imbalance**.

Organic overloading occurs when VS loading exceeds methanogenic capacity. Acids accumulate faster than they're consumed, pH drops, and methanogens are inhibited — which further reduces acid consumption in a self-reinforcing downward spiral.

Nutrient imbalance — typically ammonia toxicity or sulfide inhibition at high OLR — is less common but harder to diagnose. High-strength sludge blends (food waste co-digestion, high-protein industrial waste) are the usual culprits.

<div id="monitoring" class="story-chapter-label">[ Key Indicators ]</div>

VSR and alkalinity are your leading indicators — watch them more closely than any other digester parameter.

**Volatile Solids Reduction (VSR)** measures whether digestion is actually happening. A declining VSR at constant loading is an early warning of biological stress before pH or biogas production show a change. Use the Van Kleeck formula — the [VSR calculator](/calculators/) on this site uses it.

**Alkalinity** (bicarbonate, specifically) buffers the system against VFA accumulation. Alkalinity below 1,500 mg/L as CaCO₃ leaves little buffer for a loading event. Keep it above 2,000 mg/L if loading is variable.

**VFA/Alkalinity ratio** is the most sensitive early indicator available without a chromatography lab. Calculate it by dividing total VFAs (as acetic acid, mg/L) by total alkalinity (as CaCO₃, mg/L). A ratio below 0.1 is healthy. 0.1–0.3 is a warning zone — watch closely and reduce loading. Above 0.3, the digester is acidifying; stop loading increases and consider reducing feed until the ratio recovers.

**Biogas production rate and composition:** A healthy mesophilic digester produces 10–15 ft³ of gas per pound of VS destroyed, with methane content of 60–70%. Declining gas production at constant loading indicates reduced VS destruction efficiency. Methane content dropping below 55% while CO₂ rises suggests acid accumulation — the methanogens are consuming less relative to the fermenters.

**pH:** Digester pH should stay between 6.8 and 7.4. Don't rely on pH alone as your primary indicator — by the time pH drops to 6.5, the system is already significantly destabilized. Use VFA/alkalinity ratio to catch problems while pH is still in range.

**Temperature:** Mesophilic digesters operate at 95°F ± 4°F. A temperature swing of more than 4°F in 24 hours can stress methanogens significantly. Monitor heat exchanger performance and maintain consistent temperature. Even if digester temperature looks correct on the controller, verify it with an independent probe occasionally.

<div id="loading" class="story-chapter-label">[ Loading Management ]</div>

Consistent, predictable loading is the most important thing you can do for a digester. Methanogens do not respond well to variability — they need time to grow and adapt to changes in substrate.

**VS loading rate:** Design loading for mesophilic anaerobic digesters is typically 0.1–0.3 lbs VS/day/ft³. Stay in the lower half of that range if your feed composition is variable or if you have a history of digester instability. Exceeding the upper limit even briefly can push a stable digester into acid accumulation.

**Hydraulic loading and detention time:** Minimum detention time for reliable Class B biosolids (≥ 38% VSR) is 15 days at 95°F. At 68°F, the same VS reduction requires 20–30 days. Detention time shorter than minimum doesn't give methanogens enough time to grow and reproduce — the result is declining VSR that looks like overloading but is actually washout.

**Feed blend management:** Mixed sludge (primary + secondary) is more consistent than secondary alone. Primary sludge is higher in VS and easier to digest; secondary sludge (WAS) has lower VS content and contains more inorganic material. If your blend changes — for example, if primary clarifiers are bypassed during a storm event — adjust loading rates accordingly, not on a standard schedule.

**Co-digestion:** Adding high-strength organic waste (fats, oils, and grease; food waste; industrial organic waste) can dramatically increase biogas production, but also increases overloading risk. Introduce any co-digestion substrate slowly — add no more than 5–10% of total VS load as a new substrate in any given week. Monitor VFA/alkalinity ratio daily during the introduction period.

**Recovering from overload:** If the digester is acidifying (VFA/alkalinity ratio above 0.3, pH below 7.0):
1. Stop or significantly reduce VS loading — buy the methanogens time
2. Add alkalinity: sodium bicarbonate or lime slurry; target 2,500–3,000 mg/L alkalinity
3. Do not add lime directly to a primary digester in large doses — rapid pH increase can shock methanogens as severely as acidification
4. Hold reduced loading for one complete HRT (15–20 days) before gradually resuming normal feed
5. Resume loading at 50% of previous rate and increase 10% per week while monitoring VFA/alkalinity ratio

Recovery from a severe overload event can take 4–8 weeks. The fastest path to recovery is patience — aggressive interventions usually extend the timeline.
