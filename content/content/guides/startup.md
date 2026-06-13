---
title: "Plant Startup"
description: "Establishing hydraulics, seeding biology, and bringing a plant back online after a planned or emergency outage."
layout: "guide"
category: "Operations"
status: "draft"
weight: 1
chapters:
  - id: "overview"
    label: "Overview"
  - id: "hydraulics"
    label: "Hydraulics First"
  - id: "biology"
    label: "Biological Startup"
  - id: "solids"
    label: "Solids Handling"
---

<div id="overview" class="story-chapter-label">[ Overview ]</div>

Plant startup — whether after a planned outage, emergency shutdown, or commissioning — follows a consistent logic: **establish hydraulics first, biological processes second, solids handling last**. Rushing biology startup is the most common mistake new operators make.

The sequence matters because each stage depends on the one before it. Hydraulics sets the flow path. Biology needs stable flow and substrate to seed properly. Solids handling has nothing to process until biology is producing.

<div id="hydraulics" class="story-chapter-label">[ Hydraulics First ]</div>

Incoming flows should be confirmed before any biological processes are energized. Verify all influent screening and grit removal is operational. Primary clarifiers should be brought online and producing consistent effluent before aeration basins are seeded.

Check all return lines, recycle pumps, and overflow structures before introducing flow. A hydraulic problem discovered under load is far harder to correct than one found during commissioning walk-through.

_This section is under active development. More content coming soon._

<div id="biology" class="story-chapter-label">[ Biological Startup ]</div>

Biological startup begins when hydraulics are stable and primary effluent quality is consistent. The goal is to establish a mixed liquor population capable of nitrification before you begin normal operations — not after.

**Seeding options, in order of preference:**

1. **Live seed sludge from a healthy plant** — transfer mixed liquor with MLSS between 2,000–3,000 mg/L. Enough volume to fill aeration basins to at least 30% of target MLSS is sufficient to begin. Nitrifying organisms are present and active from day one.
2. **Return of stored sludge** — dewatered or thickened biosolids can restart a basin if no live seed is available. Expect a longer lag period (1–2 weeks) before nitrification develops; the stored population needs time to rehydrate and recover.
3. **Cold start with primary effluent only** — last resort. You're waiting for organisms to establish from scratch. Budget 4–6 weeks before expecting consistent nitrification; longer in cold weather.

**Monitoring during biological startup:**

Watch MLSS daily. Target 1,500 mg/L within the first week; 2,500–3,000 mg/L before reducing wasting to a maintenance rate. DO demand will increase as biomass establishes — this is expected. If aeration capacity can't keep up with demand at target MLSS, reduce the MCRT target temporarily.

Track ammonia and nitrate in the effluent. Nitrification is establishing when you first see measurable nitrate in the secondary effluent without a corresponding ammonia decrease. When effluent ammonia drops consistently below 1 mg/L and nitrate appears reliably, biological startup is complete.

SVI during early startup is often poor (200+). Don't waste aggressively to chase SVI; the population hasn't stabilized yet. Give it 2–3 SRTs before using SVI as an operational target.

**Temperature matters more here than anywhere else.** Nitrification is severely inhibited below 50°F. If starting a plant in winter, plan for an extended seeding period and consider reducing wasting below design rates until the basin warms.

<div id="solids" class="story-chapter-label">[ Solids Handling ]</div>

Solids handling should not be brought online until secondary clarifiers are producing consistent effluent and MLSS is approaching target range. Starting the solids train too early creates more problems than it solves — thin, inconsistent feed makes polymer optimization impossible and produces poor cake.

**Sequence for solids startup:**

1. Confirm secondary clarifiers are stable and blanket depth is controllable before pulling waste sludge for processing
2. Start gravity thickening or DAF thickening first if available — thickened feed to digesters gives better loading control than raw WAS
3. Start digesters on thickened feed; allow 15–20 days minimum before declaring digester stable (one full HRT)
4. Begin dewatering only after digested solids quality is consistent (VSR ≥ 38% if Class B biosolids)

**Digester startup specifically:** If starting an anaerobic digester from scratch (no active seed), seed with 20–30% digested sludge from an operating digester. Do not increase VS loading until pH is stable between 6.8–7.2 and gas production is established. A digester that sours on startup can take months to recover.

Monitor VFA/alkalinity ratio during startup. Ratio above 0.3 indicates the digester is being loaded faster than it can process; slow or stop loading and give the methanogens time to recover.

Once all three stages are running and producing consistent results, progressively increase loading toward design rates. Don't rush the final 20% — that's where most startup issues compound.
