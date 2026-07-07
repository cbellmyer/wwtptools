---
title: "Alkalinity Titration"
description: "Total alkalinity procedure using sulfuric acid titration, result calculation, and target ranges for activated sludge and anaerobic digestion."
layout: "guide"
category: "Laboratory"
status: "published"
weight: 31
chapters:
  - id: "overview"
    label: "Overview"
  - id: "equipment"
    label: "Reagents & Equipment"
  - id: "sampling"
    label: "Sample Collection"
  - id: "procedure"
    label: "Titration Procedure"
  - id: "calculation"
    label: "Calculating Results"
  - id: "interpretation"
    label: "Interpreting Results"
  - id: "errors"
    label: "Common Errors"
---

<div id="overview" class="story-chapter-label">[ Overview ]</div>

Alkalinity is the capacity of water to neutralize acid — it's the buffering reserve that keeps your process pH stable when acids are produced. In wastewater treatment, alkalinity matters in two very different contexts:

**Activated sludge / nitrification:** Nitrifying bacteria consume alkalinity as they oxidize ammonia. For every mg/L of ammonia nitrified, approximately 7.14 mg/L of alkalinity is consumed. If alkalinity runs low, pH drops, nitrification stalls, and effluent ammonia rises. A minimum of 50–100 mg/L alkalinity in the aeration basin effluent is the standard operational target.

**Anaerobic digestion:** Alkalinity is the primary buffer keeping digester pH in the viable range (6.8–7.4). Healthy digesters maintain alkalinity between 1,500–3,000 mg/L as CaCO₃. Declining alkalinity is an early warning sign of digester instability — often the first indicator before pH itself drops.

The standard method is a simple acid titration to the pH 4.5 endpoint (total alkalinity, also called M alkalinity). This measures bicarbonate, carbonate, and hydroxide buffering together — the number that matters operationally.

<div id="equipment" class="story-chapter-label">[ Reagents & Equipment ]</div>

**Reagents:**

- 0.02N sulfuric acid (H₂SO₄) titrant — standard for wastewater alkalinity. Must be properly standardized and within shelf life. Many labs use commercially prepared ampules or prepared reagents; verify the normality matches your calculation.
- pH buffer solutions (pH 4.0 and pH 7.0) for meter calibration before each run

**Equipment:**

- pH meter with combination electrode, calibrated
- 25 mL burette (or digital titrator if your lab uses one)
- 100 mL volumetric flask or graduated cylinder for sample volume
- Magnetic stir plate and stir bar (recommended for consistent results)
- Burette stand and clamp

**Notes on reagents:**

The 0.02N H₂SO₄ concentration is chosen because it produces a convenient calculation factor: with a 100 mL sample, each milliliter of titrant used equals exactly 10 mg/L of alkalinity as CaCO₃. Keep reagents sealed and at room temperature. Verify the normality of your acid at least quarterly using a primary standard (sodium carbonate or potassium hydrogen phthalate); a drift of ±2% will introduce meaningful error at low alkalinity values.

<div id="sampling" class="story-chapter-label">[ Sample Collection ]</div>

**Sample points by application:**

- **Nitrification monitoring:** aeration basin effluent or secondary clarifier effluent
- **Digester monitoring:** digester supernatant or mixed digester contents (centrate after spinning briefly)
- **Influent characterization:** raw influent (before any chemical addition)

**Sample handling:**

Alkalinity can change slightly after collection due to CO₂ exchange with air. Run the test within 15 minutes of collection when possible, and keep samples cool and covered. Do not acidify or preserve alkalinity samples — preservation chemicals will destroy the measurement.

Filter turbid samples through a glass fiber filter before titrating if your meter probe is sensitive to coating. For digester samples, allow solids to settle for 5–10 minutes and pipette from the clarified layer, or filter through coarse filter paper.

<div id="procedure" class="story-chapter-label">[ Titration Procedure ]</div>

1. Calibrate your pH meter using pH 4.0 and 7.0 buffers. The endpoint of this test is pH 4.5 — accurate calibration in this range is critical.
2. Measure 100 mL of sample into a clean beaker or flask.
3. Place on the stir plate. Insert the pH electrode and stir bar. Begin stirring at low speed — enough to mix without splashing.
4. Record the initial pH of the sample.
5. Fill the burette with 0.02N H₂SO₄ and record the initial burette reading.
6. Begin adding acid dropwise, allowing the pH to stabilize after each addition.
7. As you approach pH 5.0, slow the addition significantly — drop by drop.
8. Stop titrating when the pH stabilizes at **4.5** and holds for at least 30 seconds.
9. Record the final burette reading.
10. Calculate the volume of acid used (final − initial burette reading).

**Titrating with a digital titrator:** Digital titrators deliver acid in countable digit increments. Consult your titrator's conversion factor for 0.02N H₂SO₄ to convert digit count to mL equivalent before applying the calculation below.

<div id="calculation" class="story-chapter-label">[ Calculating Results ]</div>

**Formula:**

Alkalinity (mg/L as CaCO₃) = (mL titrant × N × 50,000) ÷ mL sample

**With standard conditions (0.02N H₂SO₄, 100 mL sample):**

Alkalinity (mg/L as CaCO₃) = mL titrant × 10

**Worked example:**

- Titrant used: 18.4 mL of 0.02N H₂SO₄
- Sample volume: 100 mL

Alkalinity = 18.4 × 10 = **184 mg/L as CaCO₃**

**If your normality or sample volume differs:**

Always use the full formula. A common error is applying the ×10 shortcut to a non-standard normality or sample volume — the shortcut only holds for exactly 0.02N acid and exactly 100 mL sample.

<div id="interpretation" class="story-chapter-label">[ Interpreting Results ]</div>

**Activated sludge / nitrification:**

| Alkalinity (mg/L as CaCO₃) | Interpretation                                                   |
| -------------------------- | ---------------------------------------------------------------- |
| > 100                      | Adequate buffer. Nitrification should proceed normally.          |
| 50–100                     | Marginal. Monitor pH in basin. Consider supplemental alkalinity. |
| < 50                       | Low. pH likely dropping. Nitrification impaired or at risk.      |

If your system nitrifies fully and alkalinity in the effluent is consistently below 50 mg/L, you may need to add alkalinity supplement (sodium bicarbonate, sodium carbonate, or lime depending on your permit and process). Calculate the dosing demand based on your influent ammonia load and the 7.14 mg alkalinity consumed per mg NH₄⁺-N nitrified.

**Anaerobic digestion:**

| Alkalinity (mg/L as CaCO₃) | Interpretation                                                 |
| -------------------------- | -------------------------------------------------------------- |
| > 2,500                    | Well-buffered. Good stability.                                 |
| 1,500–2,500                | Normal operating range.                                        |
| 1,000–1,500                | Declining buffer. Reduce loading or add alkalinity supplement. |
| < 1,000                    | Critically low. Digester upset likely without intervention.    |

In digester monitoring, the ratio of volatile acids (VFA) to alkalinity is often more meaningful than alkalinity alone. A VFA:alkalinity ratio above 0.3–0.4 indicates the digester is accumulating acids faster than it's buffering them — an early warning sign even when raw alkalinity appears adequate.

<div id="errors" class="story-chapter-label">[ Common Errors ]</div>

**Overshooting the endpoint:** Adding acid too quickly past pH 4.5 gives a lower apparent alkalinity. Once you've overshot, the result is invalid — discard the sample and rerun. Slow down significantly below pH 5.5.

**pH meter not equilibrated:** A freshly rinsed electrode that hasn't been allowed to stabilize will drift during the titration. Allow the electrode to sit in the sample for at least 30 seconds before starting, and verify the reading is stable.

**Wrong sample volume:** The ×10 shortcut requires exactly 100 mL. If you use 50 mL, your multiplier is 20 — not 10. Measure sample volume carefully.

**Applying shortcut to non-standard normality:** If your acid is 0.1N (a common lab concentration for other titrations), the multiplier changes completely. Always verify your reagent normality before applying any shortcut factor.

**Not filtering turbid samples:** Solids in suspension can coat the pH electrode and slow its response, causing you to undershoot or overshoot the endpoint. For mixed liquor or digester samples with heavy solids, filter or allow to settle before titrating.

**Old reagent:** H₂SO₄ is stable but check the preparation date and verify normality regularly. If your results are consistently off from historical trends, standardize your acid against a known primary standard before assuming the process has changed.
