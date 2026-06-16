---
title: "Settleometer Test — SVI Calculation"
description: "Step-by-step 30-minute settleometer procedure, SVI calculation, and interpreting results to guide wasting and RAS decisions."
layout: "guide"
category: "Laboratory"
status: "draft"
weight: 30
chapters:
  - id: "overview"
    label: "Overview"
  - id: "equipment"
    label: "Equipment & Setup"
  - id: "sampling"
    label: "Sampling Protocol"
  - id: "procedure"
    label: "Test Procedure"
  - id: "calculation"
    label: "SVI Calculation"
  - id: "interpretation"
    label: "Interpreting Results"
  - id: "errors"
    label: "Common Errors"
---

<div id="overview" class="story-chapter-label">[ Overview ]</div>

The settleometer test is the most important routine test in activated sludge process control. It measures how well your mixed liquor settles over 30 minutes, which directly reflects the condition of your biological community and predicts secondary clarifier performance.

The result — Sludge Volume Index (SVI) — tells you the volume occupied by one gram of mixed liquor suspended solids after 30 minutes of settling. Low SVI means well-settling, dense sludge. High SVI means poor settling, which leads to sludge blanket rise, solids carryover, and effluent violations if left uncorrected.

**When to run this test:**

- Once per shift at minimum on activated sludge systems
- Immediately when clarifier blanket is rising unexpectedly
- After any significant load event, storm event, or process upset
- When adjusting wasting rate or RAS rate

**What it tells you:**

- Whether your biology is healthy and settling
- Whether you need to waste more or less
- Whether your RAS rate is appropriate
- Early warning of filamentous growth or bulking conditions

<div id="equipment" class="story-chapter-label">[ Equipment & Setup ]</div>

**Equipment required:**

- 2,000 mL graduated settleometer cylinder (or 1,000 mL if using a diluted sample)
- Stopwatch or timer
- Sample collection container (bucket or beaker, minimum 3L for a clean sample)
- MLSS result from the same sample point (needed for SVI calculation)

**Notes on equipment:**

The settleometer cylinder should be clean and free of biofilm buildup. Rinse with plant effluent (not tap water) before the test — chlorinated tap water can shock the sample and interfere with settling behavior. A dedicated cylinder kept at the lab and rinsed between tests is preferable to one shared with other uses.

If your plant doesn't have a 2,000 mL settleometer cylinder, a standard 2L graduated cylinder works identically. The 2L volume is standard because it allows the test to run undiluted at typical MLSS concentrations (1,500–3,500 mg/L). At very high MLSS (above ~4,000 mg/L), settling becomes compaction-limited and you may need to dilute the sample — see Common Errors.

<div id="sampling" class="story-chapter-label">[ Sampling Protocol ]</div>

Collect your sample from the aeration basin effluent end, as close to the secondary clarifier influent as possible. This is the mixed liquor that's actually entering your clarifier — the representative point for predicting clarifier performance.

**Do not sample from:**

- The return activated sludge (RAS) line — this is already settled and concentrated sludge, not mixed liquor
- The influent end of a plug-flow basin — the biology there is in a different metabolic state
- A dead-end or stagnant area of the basin

**Sample timing:**

Collect and start the test within 5 minutes of sampling. Biological activity continues after collection — temperature change, CO₂ off-gassing, and continued floc formation all affect settling behavior if the sample sits. If you're running the test at a lab bench far from the basin, collect a slightly larger volume and pour from it immediately upon arrival.

Mix the sample gently before filling the cylinder to ensure a uniform distribution of solids.

<div id="procedure" class="story-chapter-label">[ Test Procedure ]</div>

1. Mix the sample container gently to resuspend any settled solids.
2. Fill the 2,000 mL settleometer cylinder to the 2,000 mL mark with mixed liquor.
3. Start the timer immediately.
4. Allow the sample to settle undisturbed for 30 minutes. Do not move or tap the cylinder.
5. At 30 minutes, read the volume of settled sludge at the interface between the clear supernatant and the sludge layer.
6. Record the settled sludge volume in milliliters (mL).

**Reading the interface:**

The reading is taken at the top of the sludge layer — the uppermost point of the visible sludge blanket. Ignore any turbid or hazy zone above it; that's fine particles that didn't settle completely and aren't part of the SVI calculation.

In a healthy system, the interface will be sharp and well-defined. In a bulking or filamentous situation, you may see a diffuse, fuzzy interface — record the top of the visible sludge regardless.

**Parallel MLSS sample:**

While the settleometer is running, collect a separate sample for MLSS analysis (TSS on the same mixed liquor). You need a current MLSS result — not one from earlier in the shift — to calculate an accurate SVI. If your MLSS is tested in a central lab, coordinate timing so both samples are collected from the same point at the same time.

<div id="calculation" class="story-chapter-label">[ SVI Calculation ]</div>

**Formula:**

SVI (mL/g) = SV₃₀ (mL/L) × 1,000 ÷ MLSS (mg/L)

Where SV₃₀ is the 30-minute settled volume converted to mL per liter of sample.

**Step by step:**

1. Convert settled volume to mL/L: divide settled mL by the cylinder volume in liters (2L for a standard 2,000 mL cylinder)
2. Multiply by 1,000
3. Divide by MLSS in mg/L

**Worked example:**

- Settled volume at 30 min: 480 mL
- Cylinder volume: 2,000 mL (2L)
- MLSS: 2,400 mg/L

SV₃₀ = 480 ÷ 2 = 240 mL/L

SVI = (240 × 1,000) ÷ 2,400 = **100 mL/g**

This result is solidly in the normal range for a healthy activated sludge system.

**If using a 1,000 mL cylinder:** divide your settled volume by 1 (since the cylinder holds 1L) to get mL/L, then proceed the same way.

<div id="interpretation" class="story-chapter-label">[ Interpreting Results ]</div>

| SVI (mL/g) | Condition |
|---|---|
| < 80 | Dense, well-settling sludge. May indicate high sludge age or over-wasting. |
| 80–150 | Normal range. Good settleability. |
| 150–200 | Elevated. Monitor closely. Begin investigating cause. |
| > 200 | Poor settling (bulking). Clarifier performance at risk. |
| > 300 | Severe bulking. Immediate action required. |

**What high SVI means:**

High SVI is most commonly caused by:

- **Filamentous bulking** — excessive filamentous organisms create a loose, open floc structure that settles slowly. Typical filaments: *Nocardia*, *Thiothrix*, *Type 021N*, *M. parvicella*. Microscopy is needed to confirm species.
- **Pin floc** — very fine, dispersed floc that doesn't aggregate properly. Often associated with low F/M ratio (over-aeration, over-wasting).
- **Rising sludge** — nitrogen gas bubbles lift settled sludge in the clarifier. SVI may appear normal but sludge is floating, not rising due to poor settling.
- **Viscous bulking** — gel-like floc matrix from overproduction of extracellular polymers. Associated with low-nutrient conditions.

**What low SVI means:**

SVI consistently below 80 mL/g is usually not a problem but may indicate older sludge age (high MCRT) with denser, heavier floc, or an underloaded system.

**Trending over time:**

Single SVI readings are less useful than the trend. A system running at SVI 120–130 for weeks is stable; a system that jumped from SVI 100 to 180 over three days is telling you something changed. Log your SVI with every test and review the trend as part of your routine process control.

<div id="errors" class="story-chapter-label">[ Common Errors ]</div>

**Stale sample:** Settling behavior changes within minutes of collection. A sample that sat for 20 minutes before the test started will give a lower SVI than one run immediately. Always start the test within 5 minutes of sampling.

**Wrong sample point:** RAS settles in seconds because it's already concentrated. The influent end of a plug-flow basin doesn't represent clarifier feed. Sample from the effluent end of the aeration basin.

**Moving the cylinder:** Even small vibrations during the 30-minute test disrupt the settling interface. Set the cylinder on a stable surface away from pumps, compressors, or foot traffic and leave it alone for the full 30 minutes.

**MLSS mismatch:** Using an MLSS value from earlier in the shift introduces error, especially during load events when MLSS can shift significantly. Collect both samples simultaneously from the same point.

**Compaction-limited settling at high MLSS:** Above approximately 4,000 mg/L MLSS, the settled volume may hit 1,000–1,100 mL/L because there isn't enough room for all the solids to settle further — not because of poor settleability. In this case, dilute the sample 1:1 with secondary effluent (not tap water), run the test, multiply the settled volume by 2, and calculate SVI normally. Note the dilution in your records.

**Reading too early or too late:** The test is 30 minutes — not 28, not 35. Consistency matters for trending. Set a timer and read at exactly 30 minutes.
