---
title: "Dewatering Operations"
description: "Polymer conditioning, jar testing, and getting consistent performance from gravity belt thickeners, belt presses, and centrifuges."
layout: "guide"
category: "Solids Handling"
status: "published"
weight: 4
chapters:
  - id: "overview"
    label: "Overview"
  - id: "gbt"
    label: "Gravity Belt Thickener"
  - id: "conditioning"
    label: "Sludge Conditioning"
  - id: "jar-test"
    label: "Jar Testing"
  - id: "equipment"
    label: "Equipment Optimization"
---

<div id="overview" class="story-chapter-label">[ Overview ]</div>

Solids handling follows a path: dilute sludge leaves the secondary clarifiers, gets thickened to reduce volume, gets conditioned with polymer so it will release water, and then gets mechanically dewatered into a cake that can be hauled, composted, or further processed. Each step depends on the one before it.

The gravity belt thickener (GBT) is typically the first piece of equipment in that chain, concentrating waste activated sludge from under 1% solids up to 4–8% before it reaches a digester or a dewatering press. From there, polymer conditioning determines how much water the belt press or centrifuge can actually remove — and this is where most operations have the most room to improve. The most common dewatering problem isn't a mechanical one. Operators chase belt tension, drum speed, and wash water pressure when the actual variable is polymer dose.

This guide follows the sludge through each step in sequence.

<div id="gbt" class="story-chapter-label">[ Gravity Belt Thickener ]</div>

A gravity belt thickener (GBT) is a thickening step, not final dewatering — its job is to increase feed solids concentration before downstream processing. Waste activated sludge (WAS) often arrives at a GBT at 0.5–1.5% solids; the goal is to leave at 4–8%. That concentration gain reduces the volume the digester or belt press has to handle and narrows the feed solids range that conditioning must compensate for.

The GBT uses polymer to flocculate sludge, then relies on gravity drainage across a slow-moving porous belt. There are no pressure rollers. The driving force is gravity alone, which is why incoming sludge must flocculate well — weak or unflocculated sludge drains poorly and carries through to the filtrate, reducing capture rate and increasing return load.

**Polymer conditioning for GBT:**

Cationic polymer is standard for WAS. Inject it as close to the belt feed as practical, with just enough mixing to distribute it — a short static mixer section is preferred over a long pipe run. High-head pump loops and turbulent pipe flow between the injection point and the belt break floc apart before it can drain. Over-shearing is the most common operator error on a GBT.

Polymer dose for GBTs typically runs lower than for belt presses per ton of dry solids. You're not trying to build the same floc strength — just enough structure to drain under gravity. Over-dosing produces floc that is too fluffy and doesn't compact well on the belt.

**Operating variables:**

- **Belt speed** — slower belt speed increases contact time and drainage, producing higher cake solids and better capture. Too slow and the belt floods. Find the slowest speed that keeps the sludge from ponding across the full belt width.
- **Feed rate** — hydraulic overloading is the primary cause of poor thickening. If effluent solids are rising, check flow rate before adjusting polymer. Most GBTs have a design hydraulic limit; stay below it.
- **Wash water** — belt blinding reduces drainage rate and mimics a polymer problem. Wash at regular intervals and maintain adequate pressure (typically 60–100 PSI). A clean belt draining poorly is a polymer or feed problem; a dirty belt draining poorly is a wash problem.
- **Belt tracking** — off-center tracking wastes effective belt width and causes uneven sludge distribution. Check alignment at startup.

**Where the GBT fits in the process train:**

A GBT is most commonly placed after secondary clarifier WAS withdrawal and before anaerobic digestion. Feeding a digester at 5–6% solids instead of 1% solids dramatically reduces the required digester volume and heating load. In some configurations, a GBT thickens sludge that then goes directly to a belt press or centrifuge for final dewatering, with the GBT doing the heavy lifting on volume reduction so the dewatering equipment handles a more manageable, consistent feed.

**Performance targets:** A well-operated GBT should achieve 85–95% solids capture with effluent (filtrate) solids below 200–400 mg/L. Thickened cake solids of 5–7% are typical for WAS; blended primary/secondary sludge may reach higher. If capture rate is dropping, check polymer dose and belt condition before assuming a feed problem.

The same polymer principles that govern the GBT apply downstream with greater consequence. On a belt press or centrifuge, the stakes are higher — more energy, higher polymer doses, and cake quality that determines hauling cost. Getting conditioning right is the foundation.

<div id="conditioning" class="story-chapter-label">[ Sludge Conditioning ]</div>

Polymer selection and dosing are the first variables to optimize. The right polymer type for your sludge chemistry (cationic vs. anionic, molecular weight, charge density) matters more than dose rate. A poorly matched polymer at high dose will underperform a matched polymer at half the rate.

Sludge characteristics shift with season, feed blend (primary vs. secondary vs. digested), and industrial contributions. A polymer program that works in January may need adjustment by April.

**Polymer types:** Cationic polymers are the standard for activated sludge dewatering; the sludge carries a net negative charge and cationic polymer neutralizes it. Charge density and molecular weight determine how fast floc forms and how strong it is. High charge density, low molecular weight = fast floc, weaker structure. Low charge density, high molecular weight = slower floc, more robust structure. Belt presses generally prefer the stronger floc; centrifuges can work with faster-forming floc.

**Emulsion vs. dry polymer:** Emulsion polymers are easier to mix on-demand but require proper dilution (typically 0.1–0.5% active) and a mixing zone before the contact point. Under-diluted polymer doesn't fully activate; over-diluted polymer extends the mixing zone required. Dry polymer needs more preparation time but is often more cost-effective at scale.

**Conditioning intensity and contact time:** Polymer and sludge need to mix together, but over-mixing shears the floc apart. Inline injection with a short static mixer is typically better than a pump with high head followed by turbulent pipe flow. Contact time of 5–15 seconds at the point of application is usually sufficient; more mixing after floc forms hurts cake quality.

**Feed consistency:** Variable feed concentration (% solids) makes polymer dose optimization impossible. If your feed solids swing from 1% to 4% between runs, your polymer-to-sludge ratio will be wrong half the time unless you have automatic feed-forward control. A gravity belt thickener upstream narrows this range significantly before sludge reaches the dewatering equipment.

<div id="jar-test" class="story-chapter-label">[ Jar Testing ]</div>

A jar test protocol run weekly will tell you more about conditioning chemistry than any vendor spec sheet. The test is simple: dose a known volume of sludge with increasing polymer concentrations, observe floc formation, and measure drainage rate.

**Basic jar test procedure:**

1. Collect a fresh sludge sample — use it within 30 minutes; aged sludge gives unreliable results
2. Prepare polymer solutions at 0.1–0.5% active concentration per vendor instructions
3. Pour identical sludge volumes into 4–6 jars (500 mL or 1 L works)
4. Add increasing polymer doses to each jar (e.g., 5, 10, 15, 20, 25, 30 lbs/ton dry solids as active)
5. Stir each jar at medium speed (60–80 RPM) for 30 seconds, then slow stir (20–30 RPM) for 60 seconds
6. Stop mixing and observe: floc size, speed of settling, clarity of the supernatant
7. Pour each jar through a standard wire mesh or Buchner funnel — time how long it takes to drain 250 mL of filtrate

**What to look for:** The optimal dose is the lowest dose at which you see rapid, strong floc formation (pinhead to pea size), clear supernatant, and drainage rate ≥ 60% of maximum within 30 seconds. Doses above optimal will show the same or worse drainage — polymer that exceeds charge neutralization can re-stabilize the floc.

**Common mistakes:**

- Testing at bench temperature only: cold sludge conditions polymer differently than warm. Test at operating temperature if possible.
- Not accounting for polymer age: emulsion polymer has a limited pot life after mixing (usually 24–48 hours). Old diluted polymer gives misleading dose results.
- Using tap water with high hardness to prepare solutions: hardness ions compete with polymer charge sites. Use deionized or softened water for test solutions.

Record results in a log over time. Seasonal trends become visible after 2–3 months of data, which lets you anticipate conditioning changes before they affect operations.

<div id="equipment" class="story-chapter-label">[ Equipment Optimization ]</div>

Equipment variables matter, but only within the range that conditioning allows. A belt press won't produce 22% cake solids from poorly conditioned sludge regardless of belt tension or speed.

**Belt filter press variables:**

- **Belt speed** — slower = more drainage time = higher cake solids, but lower throughput. Start slow and increase until cake solids drop, then back off 10–15%.
- **Belt tension** — higher tension = more squeezing pressure = higher solids, but also more blinding if floc is weak. Weak polymer floc plus high tension pushes fine solids through the belt and reduces recovery.
- **Wash water pressure** — belt wash is critical for maintaining drainage rate. Blinded belts look like bad conditioning; always check belt condition before changing polymer dose. Standard wash pressure is 80–120 PSI.
- **Belt tracking** — belts that track off-center lose effective width and create uneven cake. Check tracking alignment at startup.
- **Gravity drainage zone** — this is where most moisture leaves before pressure rollers. If the gravity zone isn't draining enough (sludge is still liquid entering the first roller), add polymer or reduce feed rate.

**Centrifuge variables:**

- **Bowl speed (G-force)** — higher G = more solids capture, but also more fine particle impaction and higher polymer demand. There's a G-force sweet spot for each sludge type.
- **Differential speed (pond depth)** — slower differential means longer residence time and drier cake. Increasing differential speed increases throughput but drops cake dryness and recovery.
- **Feed rate** — hydraulic overloading a centrifuge drops cake dryness and capture rate simultaneously. Don't exceed design hydraulic capacity.

**Target cake solids:** Digested sludge typically dewaters to 18–22% on a belt press, 20–25% on a centrifuge. Raw (undigested) mixed sludge is harder to dewater and typically yields 15–20%. If you're consistently below range, the problem is usually conditioning, not equipment. If you're within range but inconsistent, look at feed solids variability first.
