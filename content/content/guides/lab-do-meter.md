---
title: "DO Meter Calibration and Field Use"
description: "Air-saturation and water-saturation calibration for membrane and optical DO sensors, barometric pressure correction, field measurement technique, and membrane maintenance."
layout: "guide"
category: "Laboratory"
status: "published"
weight: 34
chapters:
  - id: "overview"
    label: "Overview"
  - id: "sensor-types"
    label: "Sensor Types"
  - id: "calibration"
    label: "Calibration Procedure"
  - id: "field-measurement"
    label: "Field Measurement"
  - id: "maintenance"
    label: "Membrane & Sensor Maintenance"
  - id: "errors"
    label: "Common Errors"
---

<div id="overview" class="story-chapter-label">[ Overview ]</div>

Dissolved oxygen (DO) measurement is critical in activated sludge process control. Operators use it to verify aeration performance, set blower output, and detect early signs of process upset. An uncalibrated or poorly maintained DO meter is a significant source of process control error — you may be running your blowers against a false target without knowing it.

DO is measured in mg/L (milligrams of oxygen dissolved per liter of water) or as percent saturation. The solubility of oxygen in water decreases as temperature increases and as barometric pressure decreases. At sea level and 20°C, fully saturated water holds approximately 9.1 mg/L of dissolved oxygen. At 25°C, that drops to 8.2 mg/L. At altitude, both values decrease further.

Most activated sludge systems target 1.5–2.5 mg/L DO in the aeration basin for conventional nitrification. Some processes run lower (BNR systems, step-feed) or higher (high-rate systems, nitrification polishing). The DO setpoint for your plant should be documented in your operating plan — the meter is only useful if it's giving accurate values.

<div id="sensor-types" class="story-chapter-label">[ Sensor Types ]</div>

Two sensor technologies are in common use at WWTP:

**Membrane (electrochemical) sensors:**

The original technology. A gas-permeable membrane allows dissolved oxygen to diffuse across to an electrochemical cell, where it is reduced and generates a current proportional to the DO concentration. Requires:

- Regular membrane replacement (monthly to quarterly, or when response becomes sluggish)
- Electrolyte solution to fill the cell behind the membrane
- Polarization time (15–30 minutes) after membrane change or long storage before calibration

Common membranes: polypropylene, polyethylene, PTFE. Thinner membranes are faster but more fragile.

**Optical (luminescent/galvanic) sensors:**

Newer technology. A luminescent compound on the sensor face is excited by light; oxygen quenches the luminescence, and the decay rate is proportional to DO concentration. Requires:

- Periodic sensor cap replacement (typically annually or per manufacturer schedule)
- No electrolyte or polarization time
- Simpler maintenance; more stable long-term

Both types require calibration. Optical sensors drift less between calibrations but are not immune to drift — calibrate as described below.

**Continuous in-basin sensors:**

Many plants have fixed DO sensors installed directly in the aeration basin, wired to SCADA. These follow the same calibration principles but may have their own interfaces. Verify your portable handheld meter against the in-basin sensor periodically — if they disagree by more than 0.5 mg/L at the same location, one needs calibration or service.

<div id="calibration" class="story-chapter-label">[ Calibration Procedure ]</div>

**When to calibrate:**

- At the start of every work session
- After any membrane change or sensor cap replacement
- If readings seem inconsistent with process expectations
- After temperature changes of more than 5–10°C since last calibration

**Air-saturation calibration (most common method):**

Air contains approximately 20.9% oxygen at any elevation. At a given temperature and barometric pressure, the expected DO concentration in air-saturated water is known. Calibrating in air tells the meter what 100% saturation looks like under current conditions.

1. Remove the probe from any liquid. Shake off excess water.
2. If your meter has a calibration cap or wet-wick chamber (to keep the membrane humidified without submerging it), use it. Some meters calibrate in open air; others require the probe tip to be in a humid but not submerged environment. Follow your meter's procedure.
3. Allow the probe to equilibrate in air for 2–3 minutes. The reading should stabilize.
4. Enter the current barometric pressure and temperature into the meter, or verify that automatic temperature compensation (ATC) is active and reading correctly.
5. Press the calibration button. Set to the expected DO value for current conditions, or set percent saturation to 100%.
6. The meter will record this as the calibration point.

**Barometric pressure entry:**

This is the most commonly skipped step and a significant source of error at elevated sites. Every 300 meters (1,000 ft) of elevation reduces atmospheric pressure by roughly 3–4%, lowering the expected DO saturation by the same amount. At 1,500 m elevation (5,000 ft), expected saturation in air is approximately 7.9 mg/L at 20°C rather than the sea-level 9.1 mg/L. Check your local barometric pressure (available from any weather service) and enter it before calibrating.

**Water-saturation calibration (alternative):**

Some procedures calibrate in water that has been vigorously aerated to saturation rather than in air. This approach is less convenient but accounts for the specific water chemistry of your sample. Follow your standard method if your permit or QA program specifies it.

**Two-point calibration:**

Some meters support calibration at both zero DO (nitrogen-saturated water or sodium sulfite solution) and at saturation. Two-point calibration improves accuracy across the full measurement range. Required by some regulatory programs for permit-relevant DO measurements. Consult your operating permit and standard methods documentation.

<div id="field-measurement" class="story-chapter-label">[ Field Measurement ]</div>

**In the aeration basin:**

1. Submerge the probe to the sampling depth (typically 1–2 feet below the surface, away from diffuser locations if measuring basin DO for process control).
2. Keep the probe moving slowly through the water — membrane sensors require water flow across the membrane to replenish the depleted oxygen layer. A probe held stationary in slow-moving water will read low. Most meters have a minimum stirring speed recommendation of 30 cm/s.
3. Allow the reading to stabilize (30–60 seconds for membrane sensors; faster for optical).
4. Record DO and temperature.

**Optical sensors** do not require water movement across the face, but gentle movement still helps ensure a representative sample rather than a stagnant micro-environment.

**Basin sampling strategy:**

A single DO reading at one point in the basin may not represent overall basin performance. In plug-flow basins, DO naturally decreases from the influent end (high oxygen demand) to the effluent end. In complete-mix basins, DO should be relatively uniform. Sample at your plant's established control points and be consistent — changing where you sample changes what you're measuring.

**Safety in the field:**

Basin grates, railings, and wet surfaces are fall hazards. Use a pole-mounted probe or an extension arm rather than leaning over open tanks. Never lean over an aeration basin with equipment or clothing that could fall in.

<div id="maintenance" class="story-chapter-label">[ Membrane & Sensor Maintenance ]</div>

**Membrane electrode maintenance:**

Replace membranes when any of the following occur:

- Response time is sluggish (more than 60–90 seconds to stabilize in a new solution)
- Membrane is visibly scratched, fouled, or discolored
- Calibration slope is outside the acceptable range
- Residuals or grease are visible on the membrane surface

**Membrane replacement procedure:**

1. Unscrew the membrane cap from the probe body.
2. Dispose of the used membrane and any residual electrolyte.
3. Rinse the electrode tip with distilled water.
4. Add fresh electrolyte solution to the new membrane cap (follow manufacturer's fill instructions — typically fill to the line, not to the top).
5. Screw the membrane cap onto the probe slowly, tilting to allow air bubbles to escape.
6. Inspect for bubbles trapped under the membrane — a trapped bubble will cause erratic readings. If bubbles are present, remove and reinstall.
7. Allow the probe to polarize for 15–30 minutes before calibrating.

**Optical sensor cap maintenance:**

Optical sensor caps degrade slowly as the luminescent material photobleaches with use. Replace per manufacturer schedule (typically 1–2 years). Between replacements:

- Clean the sensor face with a damp, lint-free cloth if fouled
- Store in the protective cap when not in use
- Avoid exposing the sensor to direct sunlight for extended periods

**Storage:**

Store the probe in the manufacturer's storage cap with a small amount of tap water or distilled water to keep the membrane humidified. Do not store the probe dry — the membrane can crack when dehydrated.

<div id="errors" class="story-chapter-label">[ Common Errors ]</div>

**Skipping barometric pressure entry:** Sea-level calibration at an elevated site will read systematically high. Always enter current barometric pressure, not the default sea-level value. Some meters store a location-specific pressure — verify it's still accurate if you've moved the meter or if weather conditions have changed significantly.

**Stationary probe in slow water:** Membrane sensors deplete oxygen from the water immediately adjacent to the membrane. If the probe isn't moving relative to the water, it reads the depleted zone rather than the bulk liquid. Keep the probe moving slowly or use a dedicated DO stirrer.

**Calibrating after a membrane change without polarization time:** Membrane sensors require 15–30 minutes to polarize after installation before they read accurately. Calibrating immediately will produce an unreliable result that drifts for the first hour of use.

**Temperature compensation not active:** DO solubility changes by approximately 0.2 mg/L per degree Celsius. If ATC is off and you're measuring water at 15°C but calibrated at 25°C, your readings will be off by ~2 mg/L. Verify ATC is active and the temperature reading is accurate.

**Bubbles against the membrane:** Air or gas bubbles clinging to the membrane face read as falsely elevated DO. In basins with diffuser aeration, position the probe away from active diffusers and check for bubble adhesion before recording the reading.

**Membrane fouled with biofilm or grease:** A grease-coated membrane passes less oxygen and reads low. After sampling mixed liquor or sludge, always rinse the probe and inspect the membrane. Clean before the next calibration.
