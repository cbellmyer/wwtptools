---
title: "Emergency Power Interruption"
description: "Immediate response, flow management, generator operations, process priorities, and restoring normal operations after a power loss event."
layout: "guide"
category: "Operations"
status: "published"
weight: 6
chapters:
  - id: "overview"
    label: "Overview"
  - id: "immediate-response"
    label: "Immediate Response"
  - id: "flow-management"
    label: "Flow Management"
  - id: "generator-ops"
    label: "Generator Operations"
  - id: "process-priorities"
    label: "Process Priorities"
  - id: "restoration"
    label: "Power Restoration"
---

<div id="overview" class="story-chapter-label">[ Overview ]</div>

A power interruption at a wastewater treatment plant is a time-sensitive emergency. Biological processes don't pause, flow keeps arriving, and permit compliance obligations remain in force regardless of the cause.

The two non-negotiables during any outage are: **flow must keep coming in** without overflowing the collection system, and **flow must keep going out** with treatment and disinfection intact. Everything else — biology, solids handling, ancillary systems — is secondary to maintaining that path through the plant. When flow stalls on either end, the consequences escalate fast and become reportable.

The first minutes determine how well the rest of the event goes. Plants with practiced response protocols and well-maintained backup power systems can weather extended outages with minimal process impact. Plants that improvise under pressure typically don't.

<div id="immediate-response" class="story-chapter-label">[ Immediate Response ]</div>

The first five minutes set the trajectory of the event. Move through this sequence quickly and in order.

**1. Confirm the source — utility outage or internal fault.**

A utility outage and an internal electrical fault look the same from inside the plant at first. Check the utility meter and main breakers before assuming the problem is external. If breakers have tripped, identify the cause before resetting — a fault-induced trip that gets reset without investigation can damage equipment or create a safety hazard. If the utility is the source, call your utility provider to report the outage and get an estimated restoration time. That number shapes every decision that follows.

**2. Verify generator auto-start.**

Most facilities have an automatic transfer switch (ATS) that starts the generator and transfers the load within 10–30 seconds of utility loss. Confirm the generator started, that the ATS transferred, and that voltage and frequency are within normal range. If the generator did not auto-start, move immediately to the manual start procedure (see Generator Operations). Everything downstream depends on this.

**3. Confirm influent pumping is running.**

Before anything else: confirm the wet well is being pumped. Check influent pump status at the panel and verify wet well level is not rising uncontrolled. This is the fastest path to an SSO and the fastest path to a reportable event. If influent pumps did not restart on the generator, this is your first priority — ahead of notifications, ahead of process checks. (See Flow Management for full detail.)

**4. Confirm effluent is leaving the plant.**

Verify that treated effluent is reaching the point of discharge — effluent pumps running if applicable, disinfection system active, outfall not obstructed. Flow that can't leave the plant backs up through every process ahead of it. (See Flow Management for full detail.)

**5. Notify.**

Notify your supervisor and on-call ORC as soon as the source is confirmed and generator and flow status are known. Don't wait for full situational awareness — notify early with what you know and update as conditions develop. If the outage is extended or any permit-relevant event has occurred or appears likely, your ORC will determine whether regulatory notification is required.

**6. Walk the plant.**

Do a fast physical walkthrough to confirm what is running and what isn't. Don't rely solely on SCADA — transfer switch events can produce momentary signal anomalies. Confirm influent screening, wet well levels, blower operation, secondary clarifier drives, and disinfection system status. Note anything that didn't restart automatically.

<div id="flow-management" class="story-chapter-label">[ Flow Management ]</div>

Maintaining flow through the plant is the primary objective of every decision made during a power outage. A plant that loses treatment efficiency during an outage can recover. A plant that allows an SSO or discharges without disinfection has a compliance event that cannot be undone.

**Influent side — keeping flow moving in:**

Raw sewage does not stop arriving because the power is out. Every gallon that enters the collection system is on its way to the plant, and it needs somewhere to go.

_Wet well management:_

The wet well is your buffer, and it has a finite capacity. As soon as backup power is confirmed, check the wet well level and calculate how much time you have. The formula is simple: usable volume remaining (gallons) divided by current inflow rate (gpm) equals minutes to overflow. Know your wet well's total usable volume, your current level, and your typical inflow rate at that time of day. At night during dry weather you may have hours. During a daytime wet weather event you may have minutes.

Know the elevation at which the wet well overflows and exactly where that overflow goes. Some facilities overflow to a bypass structure with some level of treatment; others overflow directly to a receiving water. The destination affects the regulatory consequence and the urgency of your response.

If influent pumps fail to restart on backup power:

- Attempt manual start from the local panel if available
- Notify your supervisor and ORC immediately
- Begin tracking wet well level on a short interval — every 5–10 minutes
- If portable pumping is available or accessible, initiate that request before overflow is imminent, not after

_Collection system lift stations:_

A plant-level power outage is often a collection system outage too. Remote lift stations throughout your service area depend on the same utility that just failed. If those stations don't have their own backup generators or battery systems, their wet wells are filling right now.

Know which lift stations in your collection system have backup power and which don't. High-risk stations — large tributary area, low wet well capacity, stations near receiving waters or in flood-prone areas — should be checked first. Contact your collection system operations team or on-call field crew immediately and get eyes on the highest-risk stations. An overflow at a remote lift station is an SSO in the collection system with the same reporting consequences as an overflow at the plant.

If your plant operates remote lift stations, have a priority list ready: which stations to check first, who is responsible for each one, and what the portable pump deployment procedure is.

_Inflow throttling:_

Some facilities have the ability to slow or redirect inflow during emergencies — storage basins, flow control gates, or bypass structures. If yours does and conditions warrant, this decision belongs to the ORC. Flow throttling can buy time but also redistributes the problem upstream; use it deliberately.

---

**Effluent side — keeping flow moving out:**

Treated effluent must continue flowing to the point of discharge throughout the outage. If flow out of the plant is interrupted, effluent backs up into secondary clarifiers, then into the aeration basins, and eventually overwhelms the entire process train. Beyond the hydraulic problem, any effluent leaving the plant — whether gravity or pumped — must still meet permit requirements for disinfection and quality.

_Gravity vs. pumped discharge:_

Plants that discharge by gravity have a significant advantage during power outages — the effluent keeps moving as long as hydraulic head exists. Confirm that outfall structures are unobstructed and that flow is reaching the receiving water.

Plants with pumped effluent discharge are at higher risk. If effluent pumps lose power and don't restart on the generator, effluent backs up immediately. Effluent pumps should be among the first loads confirmed on backup power. If effluent pumps cannot be powered, the plant may need to reduce or halt incoming flow to prevent backup — a decision that belongs to the ORC.

_Disinfection continuity:_

Disinfection is non-negotiable. Whether your plant uses UV or chlorination, the system must remain operational for any effluent leaving the plant.

UV systems are electrically powered and will go down if not on backup circuits. If UV loses power and flow continues to the outfall, you are discharging without disinfection — a permit violation regardless of cause. Confirm UV system status on backup power immediately after generator transfer. If UV cannot be restored, the ORC must be notified to determine whether effluent flow to the outfall should be halted and how that decision is documented.

Chlorination systems require power for dosing pumps and, in some configurations, for chemical feed control systems. Verify chemical feed is active and that residuals are within permit range. During extended outages, verify chlorine supply and residual manually if SCADA instrumentation is unreliable.

_Effluent quality during an extended outage:_

If the outage is long enough to affect biology — blowers down for extended periods, septic conditions developing in the basins — treatment efficiency will decline. Effluent quality will degrade. Begin manual sampling of the effluent earlier rather than later during a long outage so you have documented data on what was leaving the plant. That record is critical for any after-action regulatory discussion.

If there is reason to believe effluent quality has dropped below permit limits, notify your ORC. They may have options — emergency permit variance, regulatory agency notification before an exceedance occurs — that are not available after the fact.

<div id="generator-ops" class="story-chapter-label">[ Generator Operations ]</div>

**Automatic transfer switches:**

An ATS monitors utility voltage and frequency continuously. When utility power falls outside acceptable parameters, it signals the generator to start, waits for stable generator output (typically 10–15 seconds), then transfers the load from utility to generator. When utility power is restored, the ATS transfers back and signals the generator to shut down after a cool-down period. If your facility has an ATS and it functions correctly, the transfer happens with minimal operator intervention.

Know where your ATS is, what its indicators mean, and how to operate it manually if the automatic function fails. During an active event is not the time to read the manual.

**Manual transfer switches:**

If your transfer switch requires manual operation, sequence matters. Transfer under load (switching to generator while large motors are running) can cause voltage spikes or trip the generator on overload. The safest sequence:

1. De-energize or reduce large loads before transferring
2. Transfer the switch to generator
3. Verify generator voltage and frequency are stable
4. Restore loads in order of priority, pausing between large motor starts to allow the generator to stabilize

**Load management:**

Generator capacity is finite. Know your generator's rated capacity (kW) and roughly how much load each major system draws. If your total critical load approaches or exceeds generator capacity, you will need to deliberately shed non-essential loads and potentially sequence essential loads. Running a generator at or above rated capacity for extended periods causes overheating and can result in a generator trip — losing backup power entirely.

Influent pumping and effluent discharge always take priority in load decisions. If the generator is approaching capacity, shed dewatering equipment, non-critical HVAC, and administrative loads before you consider touching pumping or disinfection.

If the generator trips on overload, shed load before attempting to restart. Identify which loads were running and determine which can be delayed or reduced.

**Fuel and runtime monitoring:**

Check fuel level as soon as the generator starts. Note the current level, calculate approximate runtime at current load, and arrange refueling if the outage duration is uncertain. Most diesel generators have a rule-of-thumb consumption rate — know yours (typically listed on the generator nameplate or in the manual). Don't let the tank run below 25%; fuel starvation causes a hard shutdown and may require bleeding air from the fuel system before restart.

Log generator start time, fuel level at start, and operating parameters (voltage, frequency, oil pressure, coolant temperature) at regular intervals — hourly at minimum during an extended outage. These logs support both maintenance records and any after-action documentation.

<div id="process-priorities" class="story-chapter-label">[ Process Priorities ]</div>

Not everything at the plant can or needs to run on backup power. The objective is to protect public health and permit compliance for as long as the outage lasts.

**Critical loads — maintain at all times:**

- **Influent pumping** — the top priority. Wet well overflow is an SSO. If generator capacity forces a choice, this load is not negotiable.
- **Effluent pumping** — if discharge is pumped, this is equally non-negotiable. Backed-up effluent cascades through the entire process train.
- **Influent screening and grit removal** — rags and grit passing downstream during an outage can damage pumps and clog systems. Keep screening running.
- **Disinfection** — UV systems or chlorination must stay online. Effluent leaving the plant during an outage still has to meet permit limits. Discharging undisinfected effluent is a violation regardless of cause.
- **Secondary clarifier drives** — if drives stop, the sludge blanket builds unchecked. On a long outage, this results in sludge carryover to the effluent. These are typically low-power loads; keep them running.
- **Blowers and aeration** — biology can survive a short aeration interruption (1–2 hours), but extended loss of DO causes septic conditions in the basins, promotes filamentous growth, and significantly sets back treatment efficiency. Protect aeration capacity early.
- **Digester heating and mixing** — methanogens are sensitive to temperature swings. Losing digester heat during a winter outage can destabilize an otherwise healthy digester within 12–24 hours. The recovery cost from digester upset is far higher than the load it carries.
- **SCADA and control systems** — operators need visibility. Instrumentation panels and control systems are typically on dedicated circuits or UPS; verify they're on backup power.

**Loads that can be deferred:**

- Dewatering equipment (belt presses, centrifuges, GBTs)
- Odor control systems (short-term deferral is acceptable)
- Non-critical HVAC
- Lab equipment
- Administrative and office areas
- Sludge transfer pumps (unless actively filling a digester that needs material)

**Extended outage considerations:**

Beyond two to four hours, process decisions become more complex:

- **Mixed liquor** — extended loss of aeration causes DO to drop to zero. Once the mixed liquor goes septic (hydrogen sulfide smell, black coloration), recovery takes days. If the outage will extend beyond two hours, prioritize returning blowers to service over almost everything else on the non-critical list.
- **Wet weather** — a power outage during a wet weather event is the worst-case combination. High inflow, full wet wells, limited pumping capacity, and remote lift stations potentially failing simultaneously. Have the ORC on-site or on standby. Know your wet well overflow elevation and the inflow rate; don't wait until you're close to the edge.
- **Feed to digester** — suspend sludge feeding to the digester during an extended outage unless heating is confirmed stable. Adding cold sludge to a digester that can't maintain temperature accelerates the thermal stress.

<div id="restoration" class="story-chapter-label">[ Power Restoration ]</div>

Restoring utility power after an outage requires as much discipline as the initial response. Bringing everything back online at once can cause inrush current spikes that trip breakers or damage motor starters, and it can obscure equipment problems that developed during the outage.

**Transfer back to utility:**

If your ATS is automatic, it will transfer back when utility power is stable and within parameters — typically after a 1–5 minute confirmation delay to avoid transferring during momentary restoration. Verify the transfer completed and that the generator enters cool-down mode (it should continue running for 5–15 minutes before shutting down to allow the engine to cool under no-load conditions). Do not shut the generator down manually during the cool-down cycle unless there's a specific reason to.

For manual transfer switches, reduce or de-energize large loads before switching back to utility, then restore loads in the same priority order used during the outage.

**Process restart sequence:**

Restart in this order, pausing after each major motor start to confirm stable operation before adding the next load:

1. Confirm utility voltage and frequency are stable (allow 1–3 minutes after restoration)
2. Influent screening and pumping (should already be running — verify wet well level is normalizing)
3. Effluent pumping (if applicable — verify flow is reaching the outfall)
4. Blowers and aeration — verify DO response in aeration basins
5. Secondary clarifier drives (confirm rotation)
6. Disinfection system — verify output, dose, and effluent residuals
7. Digester systems — confirm heating setpoint and mixing
8. Remaining process equipment in order of operational priority
9. Non-critical loads last

**Post-restoration inspection:**

Walk the plant again after restoration with fresh eyes. Look for:

- Wet well level trending back to normal operating range
- Effluent flow confirmed at the outfall — verify visually or via flow meter
- Equipment that failed to restart automatically (motor trips, blown fuses, failed contactors)
- Any signs of equipment damage during the outage (overheating, water intrusion, unusual noise)
- Process parameters — DO, clarifier blanket depth, effluent quality — trending back toward normal
- Remote lift station status — confirm all stations are back online and at normal levels
- Generator condition — fuel level consumed, any fault codes logged, oil and coolant levels

**Documentation:**

Log the following before the end of shift:

- Outage start and end times
- Generator start time, runtime, and fuel consumed
- Wet well level at key points during the outage (start, low point, any near-overflow conditions)
- Remote lift station status during the outage and any that required field response
- Any loads that were not maintained and for how long
- Effluent disinfection status throughout the event — any gaps in UV or chlorination coverage
- Any process impacts observed (DO loss, blanket rise, effluent quality changes)
- Any SSO, permit exceedance, or near-miss event
- Notifications made and to whom

If an SSO occurred or effluent quality was compromised during the event, notify your ORC and superintendent immediately — regulatory reporting timelines are short (often 24 hours for SSOs), and documentation of your response actions is critical to demonstrating good-faith compliance efforts.
