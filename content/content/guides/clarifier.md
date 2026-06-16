---
title: "Secondary Clarifier Troubleshooting"
description: "Diagnosing and correcting sludge blanket problems, rising sludge, and effluent quality issues in secondary clarifiers."
layout: "guide"
category: "Troubleshooting"
status: "published"
weight: 7
chapters:
  - id: "overview"
    label: "Overview"
  - id: "blanket"
    label: "Blanket Control"
  - id: "rising-sludge"
    label: "Rising Sludge"
  - id: "effluent-quality"
    label: "Effluent Quality"
---

<div id="overview" class="story-chapter-label">[ Overview ]</div>

The secondary clarifier is where biology becomes compliance. Every process decision upstream — wasting rate, RAS rate, aeration, loading — shows up here as either a stable blanket and clear effluent or a rising sludge layer and a permit problem.

The clarifier has one job: separate your biological community from the treated water. It does this passively, with gravity, so it amplifies whatever you send it. Healthy, dense, well-settling sludge produces a tight blanket and clear water over the weirs. Filamentous, poorly settling, or gas-lifted sludge produces a rising blanket, carryover, and turbid effluent.

**Three outputs to monitor:**

- **Clear effluent** — low TSS, no visible turbidity, no foam or scum carryover
- **Consistent RAS flow** — return activated sludge pumped at the correct rate to maintain your MLSS target
- **Controlled WAS** — waste activated sludge pulled at the rate needed to maintain your target SRT

**The sludge blanket is your real-time process indicator.** Blanket depth reflects the balance between solids entering the clarifier (from the aeration basin) and solids leaving it (via RAS and WAS). A rising blanket means more is going in than coming out. A disappearing blanket means too much is leaving — often through the effluent weirs, or because WAS has been too aggressive.

**When secondary clarifier problems occur, the cause is almost never in the clarifier itself.** Blanket depth, settleability, and effluent quality are symptoms. The causes are usually aeration basin conditions — SRT, DO, loading, filamentous growth — or hydraulic conditions like flow surges and RAS pump failures. Treat the clarifier as a diagnostic instrument: it tells you what's happening upstream.

For structured symptom-cause-response guidance, see the [Process Decision Matrix — Activated Sludge](/matrix/). This guide covers the mechanics of monitoring and responding to what you observe in the clarifier.

<div id="blanket" class="story-chapter-label">[ Blanket Control ]</div>

**What blanket depth tells you:**

The sludge blanket depth is the distance from the water surface down to the top of the settled sludge layer. A typical secondary clarifier in a healthy activated sludge system runs a blanket of 1–3 feet. The target for your plant may be different depending on clarifier depth, design, and permit constraints — establish your normal operating range and document it.

| Blanket Condition | What It Means |
|---|---|
| Stable, within normal range | Solids in/out balance is correct. No action needed. |
| Slowly rising over days | WAS rate too low, or RAS slightly low. Review SRT and wasting math. |
| Rapidly rising (hours) | Hydraulic overload, denitrification gas lift, or RAS pump issue. |
| Disappearing/very shallow | WAS too aggressive, MLSS dropping, or very low flow diluting solids. |
| Blanket over weir elevation | Immediate risk of permit exceedance — reduce feed or increase RAS now. |

**How to measure:**

The standard method is a blanket judge (also called a sludge judge or core sampler) — a clear tube with a check valve that you lower into the clarifier to collect a sample column from surface to bottom. Measure the depth of the sludge layer in the sample tube and record it. Check at the same location and time each shift for consistent trending.

Some plants have online blanket-level sensors (ultrasonic or optical); treat their readings as trends rather than absolute values and verify periodically with a manual measurement.

**The primary blanket control knob — RAS rate:**

Return activated sludge (RAS) rate is your fastest tool for managing blanket depth. Increasing RAS pulls sludge out of the clarifier faster and drops the blanket; decreasing it lets the blanket build.

A common starting point is a RAS-to-influent flow ratio of 50–100%. The correct ratio for your system depends on your MLSS target and the sludge volume index (SVI) of your mixed liquor. A bulking system with high SVI requires a higher RAS ratio to keep the blanket in check.

**RAS rate and MLSS relationship:**

RAS rate controls where sludge sits (blanket depth in the clarifier), but it also affects MLSS in the aeration basin. Increasing RAS returns more solids to the basin, which raises MLSS if wasting stays constant. This relationship means blanket control and MLSS control are linked — changing RAS without adjusting WAS will shift your MLSS over time.

**WAS rate and blanket over longer timeframes:**

WAS rate is the slow knob. It controls SRT and MLSS over days to weeks. If your blanket is steadily rising week over week despite correct RAS rates, the underlying issue is usually inadequate wasting — you're growing more biomass than you're removing. Increase WAS gradually (10–15% at a time) and allow 3–5 days to assess the result before changing again.

**Operating during flow events:**

During wet weather or peak flows, the clarifier receives more hydraulic load and the sludge blanket typically rises. Standard response:

1. Increase RAS rate to offset the higher solids flux
2. Reduce WAS temporarily to maintain MLSS — you need more biology in the system to absorb the incoming load
3. Monitor blanket every 30–60 minutes during the event
4. Return to normal WAS rate as flows recede, watching for MLSS recovery

<div id="rising-sludge" class="story-chapter-label">[ Rising Sludge ]</div>

Rising sludge is one of the more alarming things to see in a secondary clarifier — large masses or sheets of sludge floating to the surface rather than settling. It's a common problem, but the cause and response differ significantly depending on which mechanism is driving it.

**Identifying the mechanism first:**

The most important diagnostic step is to look for gas bubbles. This separates two fundamentally different causes.

| Observation | Likely Mechanism |
|---|---|
| Gas bubbles visible rising from blanket; sludge rises in patches | Denitrification gas lift |
| No gas bubbles; sludge rising uniformly; SVI elevated | Filamentous bulking |
| No gas bubbles; SVI normal; blanket rises with flow | Hydraulic overload |
| Blanket rising; RAS pump recently adjusted or shut down | RAS rate problem |

---

**Denitrification gas lift:**

When nitrate is present in the aeration basin effluent and sludge sits in the clarifier long enough, denitrifying bacteria reduce nitrate to nitrogen gas inside the settled sludge layer. The gas bubbles become trapped in the floc, reducing its density and lifting it toward the surface.

*Indicators:*
- Visible gas bubbles rising through blanket
- Sludge rises in rafts or patches, not a uniform blanket lift
- Nitrate present in aeration basin effluent (> 1–2 mg/L NO₃-N)
- More common in warmer water and during low-flow periods when sludge residence time in the clarifier is longest

*Response:*
- Increase RAS rate to reduce sludge detention time in the clarifier
- Investigate anoxic pockets in the aeration basin — if denitrification is occurring in the basin, it will also occur in the clarifier
- If operating a BNR process, review internal recycle rates and anoxic zone boundaries
- Lower the blanket temporarily with a short-term WAS reduction

---

**Filamentous bulking:**

Filamentous organisms grow in long strands or chains that extend beyond the floc particle, creating a loose, open structure that settles slowly and poorly. High SVI is the defining characteristic.

*Indicators:*
- SVI consistently above 200 mL/g
- Interface in settleometer is diffuse and poorly defined
- Filamentous organisms visible under microscope (identification matters — different organisms have different causes)
- Blanket remains elevated even with high RAS rates

*Response:*
- Run settleometer test and microscopy to confirm bulking and identify the organism type
- Review operating conditions for the likely cause (see Filamentous Organisms reference table)
- Chlorinate the foam and surface scum — do not chlorinate the aeration basin
- For *Nocardia* or *Microthrix parvicella*: reduce SRT; these organisms thrive at long sludge ages
- For *Thiothrix* or *Type 021N*: investigate sulfide or low dissolved oxygen in the influent zone

Filamentous bulking recovery takes weeks, not days. The immediate priority is protecting the clarifier from blanket overflow while you work on the underlying cause.

---

**Hydraulic overload:**

High influent flows overwhelm the clarifier's settling capacity. The hydraulic surface loading rate (flow ÷ clarifier surface area) exceeds the settling velocity of the sludge, and solids are carried over the weirs.

*Indicators:*
- Influent flow above design or historical peak
- Blanket rises proportionally with flow, recovers as flow drops
- SVI within normal range — the sludge settles fine, there's just too much water pushing through
- No gas bubbles

*Response:*
- Increase RAS rate to compensate for the higher solids flux
- Reduce WAS to preserve MLSS during the event
- Monitor effluent quality continuously; begin permit event documentation if TSS approaches limits
- Review wet weather operating plan and flow equalization options if this is a recurring issue

---

**RAS rate problems:**

A blanket that rises steadily without a flow event, gas bubbles, or elevated SVI often points to a RAS system issue — pump failure, speed reduction, partially closed valve, or clogged suction line.

*Response:*
- Verify RAS pump(s) are running and confirm actual RAS flow rate with the flow meter, not just pump status
- Check for valves partially closed on the RAS return line
- Inspect RAS suction for obstruction
- If a pump failed, assess how long it has been down and how much blanket has accumulated — recovery may require several hours at elevated RAS once the pump is restored

<div id="effluent-quality" class="story-chapter-label">[ Effluent Quality ]</div>

Effluent TSS exceedances from the secondary clarifier have multiple causes, and the appearance of the effluent often points to the mechanism.

**Visible blanket rise or sludge over the weir:**

The most obvious cause. If the blanket has risen to weir elevation, sludge will pour over the effluent weir. The appearance is unmistakable — turbid, brownish water with visible floc particles.

Response: treat as a blanket control emergency. Increase RAS immediately, reduce WAS, and reduce influent flow if possible. Notify your superintendent. Document the event start time and conditions for permit reporting.

---

**Turbid effluent with no blanket rise:**

Clear effluent that suddenly turns turbid, or consistently elevated TSS without visible blanket overflow, suggests one of two things:

*Pin floc / dispersed growth:*
Very small, lightweight floc particles that pass through the clarifier without settling. The effluent appears hazy or faintly turbid with no large visible particles.

- Often occurs after a process upset: toxic loading, sudden pH change, chemical overdose
- Also associated with very low F/M ratio (over-wasted systems)
- Microscopy shows dispersed growth with few large floc particles
- Response: identify and resolve the cause of deflocculation; allow time for floc structure to recover; consider polymer addition as a temporary measure

*Deflocculation from toxic or chemical shock:*
A rapid-onset event. If a toxic discharge or chemical overdose hit the system, the biological floc structure breaks apart and fine particles carry over.

- Correlates with a known event (industrial discharge, cleaning chemical, wrong product delivered)
- SVI may be low or normal — sludge is not bulking, it's disintegrating
- Response: address the source; increase WAS to flush inhibited biomass; allow 1–2 weeks for recovery

---

**Foam carryover:**

Foam generated in the aeration basin can carry over the effluent weir. It's generally not a TSS compliance concern unless it's heavy enough to contribute solids, but it can be a nuisance and a visual indicator of a process problem.

- White, transient foam: surfactant loading or young sludge (low SRT). Typically resolves as the load passes.
- Brown/tan stable foam: *Nocardia* or *Microthrix parvicella*. Manage by reducing SRT and removing foam from the surface — do not recycle it.

---

**Effluent clarity checklist:**

Use this sequence when effluent quality is unexpectedly poor:

1. Check blanket depth — is it near or over the weirs?
2. Check influent flow — is there a hydraulic event?
3. Run a settleometer — is SVI elevated, normal, or very low?
4. Run microscopy if SVI is abnormal — filamentous or dispersed growth?
5. Review recent chemical additions and industrial discharge records
6. Check RAS flow meter — is actual RAS flow what you think it is?
7. Walk the clarifier — any mechanical issues with the sludge collector, RAS suction, or effluent weir leveling?

Most secondary clarifier effluent problems trace back to one of these six areas. Work through them systematically before concluding you have a more exotic problem.
