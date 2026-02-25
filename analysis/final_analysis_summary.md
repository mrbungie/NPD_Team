# Final Analysis Summary (Downstream Product Development)

This is the product-development-facing output of the synthetic persona work.

It is grounded in the evidence chain in `methodology/persona_db/`:
- Sources: `methodology/persona_db/01_sources/`
- Claims: `methodology/persona_db/02_claims/`
- Framework runs: `methodology/persona_db/03_framework_runs/`
- Personas: `methodology/persona_db/04_personas/`
- Clusters + syntheses: `methodology/persona_db/05_synthesis/`

## 1) Scope and What This Enables

### Two cohorts (do not mix)

1) `patient_unknown_symptom`
- Patients with unknown/unexplained symptoms navigating uncertainty, care-seeking, and legitimacy.

2) `insurer`
- Payers/purchasers evaluating, contracting, and governing digital health solutions.

### What downstream teams should use this for
- Define MVP scope and “table-stakes vs differentiators” (Kano)
- Write PRDs with explicit evidence support (Claim IDs)
- Create a coherent patient journey model + insurer procurement model
- Choose experiments and success metrics that match real constraints

## 2) Executive Takeaways (What Matters Most)

### Patient side (unknown/unexplained symptoms)
- Self-triage is commonly triggered by **new/unfamiliar symptoms**; symptom checkers are often a first action. (Claim: CLAIM-20260224-004)
- Patients seek peer similarity and support when causes/treatments are uncertain; online communities are part of the journey, not an edge case. (Claims: CLAIM-20260224-002, CLAIM-20260224-003)
- Post-self-triage behavior branches (self-treat, wait, seek care, ignore guidance) and disclosure to clinicians about tool use is inconsistent. (Claim: CLAIM-20260224-005)
- Access friction (stigma, appointment logistics, “normal” results, affordability) is a primary determinant of persistence and outcomes. (Claim: CLAIM-20260224-009)
- A core value lever is moving from “uncertainty” to “clinician-usable communication” (structured, clinician-ready outputs that can reduce diagnostic delay). (Claim: CLAIM-20260224-014)

### Insurer/purchaser side
- Purchasers gate adoption on **measurable clinical + economic outcomes**, and explicitly reject engagement-only evidence. (Claim: CLAIM-20260224-016)
- Purchasers distrust vendor-built ROI models and state they cannot validate assumptions internally; auditability is a make-or-break requirement. (Claim: CLAIM-20260224-020)
- Performance-based contracting (payment tied to outcomes) is used/planned and shapes negotiation posture. (Claim: CLAIM-20260224-018)
- Compliance constraints are product requirements (FHIR APIs; prior authorization timeframes/denial reasons/reporting). (Claims: CLAIM-20260224-025, CLAIM-20260224-026)
- AI adoption in utilization review/prior auth increases governance needs to avoid harm modes and wrongful denials. (Claims: CLAIM-20260224-027, CLAIM-20260224-028)

## 3) Evidence Strength Snapshot

### High-confidence foundations (examples)
- Symptom checker usage determinants and user reactions (JMIR longitudinal mixed methods). (Claim: CLAIM-20260224-004)
- Online community sensemaking patterns (PMC analysis). (Claim: CLAIM-20260224-002)
- Government adoption patterns for portals/apps (ASTP/ONC). (Claims: CLAIM-20260224-011, CLAIM-20260224-012)
- Purchaser evidence gating (PHTI survey). (Claim: CLAIM-20260224-016)
- Regulatory requirements for payer APIs/prior auth (CMS). (Claims: CLAIM-20260224-025, CLAIM-20260224-026)
- AI governance needs in insurance decision-making (Stanford HAI). (Claims: CLAIM-20260224-027, CLAIM-20260224-028)

### Medium-confidence constraints (do not treat as core truth without more validation)
- “Point solution fatigue” numbers and market counts from blog-level secondary sources. (Claims: CLAIM-20260224-022, CLAIM-20260224-023)
- ROI-not-realized survey figures when sourced via trade publication summaries. (Claim: CLAIM-20260224-024)

## 4) Patient Cohort: What to Build For (patient_unknown_symptom)

### 4.1 Canonical patient journey model (DO)
This is the “truthy” journey scaffold to design the product around:

1) Trigger
- New/unfamiliar symptoms appear → immediate uncertainty. (Claim: CLAIM-20260224-004)

2) First-line uncertainty management
- Symptom checker use as a first action; online community search for similarity/support. (Claims: CLAIM-20260224-004, CLAIM-20260224-002)

3) Branching follow-through
- Self-treat, wait-and-see, schedule care, urgent care, or ignore guidance; disclosure about self-triage may not happen. (Claim: CLAIM-20260224-005)

4) System friction compounds uncertainty
- Stigma/dismissal pressure, appointment logistics, “normal” tests, affordability impact persistence and next actions. (Claim: CLAIM-20260224-009)

5) Documentation and continuity problem
- App-based records access is growing; fragmentation is common; consolidation behavior is rare. (Claims: CLAIM-20260224-011, CLAIM-20260224-012)

6) Clinician handoff opportunity
- Clinician-ready artifacts + structured outputs can reduce diagnostic delay; this is a core value lever. (Claim: CLAIM-20260224-014)

### 4.2 Patient SAY themes to support (language you must design for)
- Similarity seeking and validation language (“Is this happening to you?”). (Claim: CLAIM-20260224-003)
- Anxiety amplification risk from risk-averse triage and serious suggestions. (Claim: CLAIM-20260224-008)
- Legitimacy and stigma framing (“None of us are lying”). (Claim: CLAIM-20260224-010)

### 4.3 Patient Kano priorities (Kano)
Basics (ship or fail)
- Calibrated guidance that avoids unnecessary alarm and preserves trust. (Claim: CLAIM-20260224-008)

Performance (core “make it better” levers)
- Personalization and nuanced symptom capture (insufficient personalization is a known unmet need). (Claims: CLAIM-20260224-006, CLAIM-20260224-004)
- Navigation support for friction points (logistics, normal results, affordability). (Claim: CLAIM-20260224-009)

Delighters (pull if executed well)
- Clinician-ready outputs that shorten delay and reduce repetition burden. (Claim: CLAIM-20260224-014)
- Explicit legitimacy-support language/structure acknowledging being believed needs. (Claim: CLAIM-20260224-010)

### 4.4 Patient personas (quick cards)

Each persona is a decision model. These are the “cards” teams should use without opening other files.

1) Evidence-Driven Navigator
- JTBD: reduce uncertainty and get to the right care path without wasting time/credibility. (Claims: CLAIM-20260224-004, CLAIM-20260224-005)
- What blocks them: access friction and over-alarming triage outputs. (Claims: CLAIM-20260224-009, CLAIM-20260224-008)
- What they will adopt: nuanced capture + clinician-ready summaries. (Claims: CLAIM-20260224-006, CLAIM-20260224-014)

2) Community-Dependent Seeker
- JTBD: find credible explanations by comparing experiences, especially under slow/dismissive pathways. (Claims: CLAIM-20260224-001, CLAIM-20260224-002)
- What blocks them: stigma/legitimacy burden and fragmented records. (Claims: CLAIM-20260224-010, CLAIM-20260224-011)
- What they will adopt: validation-forward language and continuity support across episodes. (Claims: CLAIM-20260224-003, CLAIM-20260224-011)

3) Anxious Reassurance Seeker
- JTBD: reassurance + calibrated plan when symptoms appear, without worst-case spirals. (Claims: CLAIM-20260224-004, CLAIM-20260224-008)
- What blocks them: symptom checker outputs can increase anxiety; lack of personalization reduces perceived usefulness. (Claims: CLAIM-20260224-008, CLAIM-20260224-006)
- What they will adopt: “graduated next steps” and non-alarming UX. (Claims: CLAIM-20260224-005, CLAIM-20260224-008)

4) Legitimacy-Fatigue Survivor
- JTBD: reduce effort of “proving it’s real” while stuck in repeated consultations and conflicting opinions. (Claims: CLAIM-20260224-001, CLAIM-20260224-010)
- What blocks them: stigma/logistics/normal-results/affordability friction. (Claim: CLAIM-20260224-009)
- What they will adopt: clinician-usable artifacts that reduce repetition and accelerate recognition. (Claim: CLAIM-20260224-014)

Persona set (files):
- `methodology/persona_db/04_personas/patient_unknown_symptom/PERSONA-patient_unknown_symptom-001-evidence-driven-navigator.md`
- `methodology/persona_db/04_personas/patient_unknown_symptom/PERSONA-patient_unknown_symptom-002-community-dependent-seeker.md`
- `methodology/persona_db/04_personas/patient_unknown_symptom/PERSONA-patient_unknown_symptom-003-anxious-reassurance-seeker.md`
- `methodology/persona_db/04_personas/patient_unknown_symptom/PERSONA-patient_unknown_symptom-004-legitimacy-fatigue-survivor.md`

### 4.5 Patient-side product epics (downstream requirements)

Epic P1: Uncertainty-to-Clinician Summary
- Must: capture nuanced symptom + context and generate a clinician-ready summary. (Claims: CLAIM-20260224-006, CLAIM-20260224-014)
- Must: preserve trust (avoid unnecessary alarm) because anxious users can be unsettled by triage outputs. (Claim: CLAIM-20260224-008)
- Success signals (inferred from DO): increased follow-through quality after self-triage branch points. (Claim basis: CLAIM-20260224-005)

Epic P2: Follow-through and friction navigation
- Must: support appointment logistics and handling of “normal tests” without invalidation. (Claim: CLAIM-20260224-009)
- Must: include legitimacy-preserving language patterns. (Claim: CLAIM-20260224-010)

Epic P3: “Calibrated next steps” guidance
- Must: present graduated options (self-care, wait, appointment, urgent) without pushing blanket escalation. (Claim basis: CLAIM-20260224-005)
- Must: avoid anxiety amplification patterns. (Claim: CLAIM-20260224-008)

Epic P4: Records continuity (careful)
- Context: portals/apps are used increasingly, but aggregation use is low; fragmentation persists. (Claims: CLAIM-20260224-011, CLAIM-20260224-012)
- Product implication (inferred): consolidation must be designed for trust and low effort, or it will not be used.

## 5) Insurer Cohort: What to Build/Sell/Operate For (insurer)

### 5.1 Canonical buyer journey model (DO)

1) Evidence gate
- Measurable clinical + economic outcomes are required; engagement metrics are insufficient. (Claim: CLAIM-20260224-016)

2) Auditability gate
- Purchasers distrust vendor-built ROI models and say they can’t validate assumptions internally. (Claim: CLAIM-20260224-020)

3) Contract posture gate
- Performance-based contracting is used/planned; payment tied to outcomes. (Claim: CLAIM-20260224-018)

4) Compliance/workflow gate
- Regulatory requirements force payer API modernization and prior auth workflow constraints. (Claims: CLAIM-20260224-025, CLAIM-20260224-026)

5) Governance gate (especially for AI)
- AI in utilization review/prior auth requires governance to avoid harms and unjust denial patterns. (Claims: CLAIM-20260224-027, CLAIM-20260224-028)

### 5.2 Insurer SAY themes (language you must sell to)
- “Outcomes, not engagement.” (Claim: CLAIM-20260224-016)
- “We can’t validate vendor ROI assumptions internally.” (Claim: CLAIM-20260224-020)
- “PBC is expected.” (Claim: CLAIM-20260224-030)

### 5.3 Insurer Kano priorities (Kano)
Basics
- Compliance fit: required payer APIs and prior auth operational requirements. (Claims: CLAIM-20260224-025, CLAIM-20260224-026)
- AI governance expectations to prevent harm modes. (Claim: CLAIM-20260224-028)

Performance
- ROI auditability and validation workflows. (Claim: CLAIM-20260224-020)
- Outcome measurement oriented to clinical + financial metrics. (Claim: CLAIM-20260224-019)

Delighters
- Admin burden reduction without increasing harms or compliance risk. (Claim: CLAIM-20260224-028)

### 5.4 Insurer personas (quick cards)

1) Evidence Assurance Analyst
- JTBD: reduce purchase risk via evidence quality and auditability. (Claims: CLAIM-20260224-016, CLAIM-20260224-020)
- Adopts: transparent measurement, validation paths, and governance narratives. (Claims: CLAIM-20260224-020, CLAIM-20260224-028)

2) ROI Governance Executive
- JTBD: invest while proving ROI and reducing reputational/regulatory risk. (Claims: CLAIM-20260224-024, CLAIM-20260224-027)
- Adopts: PBC-ready outcome reporting + governance. (Claims: CLAIM-20260224-018, CLAIM-20260224-027)

3) Pilot-Forward Product Owner
- JTBD: move fast without creating integration fragmentation (“point solution fatigue”). (Claim: CLAIM-20260224-022)
- Adopts: implementation feasibility + clear success criteria tied to outcomes. (Claims: CLAIM-20260224-016, CLAIM-20260224-018)

4) Workflow-Protecting Ops Manager
- JTBD: keep prior auth and compliance workflows stable while reducing administrative burden. (Claims: CLAIM-20260224-026, CLAIM-20260224-021)
- Adopts: compliance-aligned workflow tools + governance guardrails. (Claims: CLAIM-20260224-025, CLAIM-20260224-027)

Persona set (files):
- `methodology/persona_db/04_personas/insurer/PERSONA-insurer-001-evidence-assurance-analyst.md`
- `methodology/persona_db/04_personas/insurer/PERSONA-insurer-002-roi-governance-executive.md`
- `methodology/persona_db/04_personas/insurer/PERSONA-insurer-003-pilot-forward-product-owner.md`
- `methodology/persona_db/04_personas/insurer/PERSONA-insurer-004-workflow-protecting-ops-manager.md`

### 5.5 Insurer-facing product epics (downstream requirements)

Epic I1: Outcomes evidence + measurement system
- Must: produce measurable clinical + economic outcomes, not engagement-only. (Claim: CLAIM-20260224-016)
- Must: align reporting to clinical + financial outcomes. (Claim: CLAIM-20260224-019)

Epic I2: Auditability and validation
- Must: enable purchasers to validate assumptions; reduce vendor-ROI distrust. (Claim: CLAIM-20260224-020)

Epic I3: PBC readiness
- Must: support outcome-linked contracting and measurement. (Claim: CLAIM-20260224-018)

Epic I4: Compliance/workflow fit
- Must: align with payer interoperability requirements and prior authorization process expectations. (Claims: CLAIM-20260224-025, CLAIM-20260224-026)

Epic I5: Governance for AI-supported decisions
- Must: include monitoring and safeguards for harm modes in utilization review/prior auth. (Claims: CLAIM-20260224-027, CLAIM-20260224-028)

## 6) Integrated Product Strategy (Two-Sided Reality)

This is a two-sided product constraint:
- Patient value is “uncertainty reduction + legitimacy + clinician-usable communication.” (Claims: CLAIM-20260224-003, CLAIM-20260224-010, CLAIM-20260224-014)
- Insurer value is “outcomes + auditability + workflow fit + governance.” (Claims: CLAIM-20260224-016, CLAIM-20260224-020, CLAIM-20260224-026, CLAIM-20260224-028)

Practical implication:
- Anything that improves patient experience but cannot be measured credibly (or cannot integrate/govern) is unlikely to be adopted at scale. (Claim basis: CLAIM-20260224-016)

## 7) Experiment and Validation Backlog (What to Test Next)

### Patient experiments (priority)
1) Calibrated next steps vs anxiety amplification
- Goal: reduce alarm while maintaining appropriate escalation decisions.
- Evidence driver: symptom checker outputs can unsettle anxious users. (Claim: CLAIM-20260224-008)

2) Personalization usefulness
- Goal: does nuanced symptom capture improve perceived usefulness and follow-through?
- Evidence driver: unmet needs include lack of personalization and nuanced symptom input. (Claim: CLAIM-20260224-006)

3) Clinician-ready summary utility
- Goal: does clinician-facing output improve clinician conversation quality and reduce repeat-history burden?
- Evidence driver: clinician-ready artifacts are positioned to combat diagnostic delays. (Claim: CLAIM-20260224-014)

### Insurer experiments (priority)
1) Outcomes measurement feasibility
- Goal: can we define measurable clinical + economic outcomes that match purchaser expectations?
- Evidence driver: outcomes gate. (Claim: CLAIM-20260224-016)

2) Auditability workflow
- Goal: can a buyer validate key ROI assumptions using available data?
- Evidence driver: vendor ROI distrust / inability to validate. (Claim: CLAIM-20260224-020)

3) Governance expectations check
- Goal: does the governance story and monitoring meet insurer risk posture?
- Evidence driver: governance needed for AI-supported decisions. (Claim: CLAIM-20260224-027)

## 8) Risks and Open Questions (Explicit)

### Evidence coverage risks
- Insurer evidence currently includes US regulatory context (CMS) and may need localization if the product is targeting a different geography. (Claims: CLAIM-20260224-025, CLAIM-20260224-026)

### Product risks
- Over-alarming guidance can increase anxiety and reduce trust/adoption for an important segment. (Claim: CLAIM-20260224-008)
- Record consolidation has low baseline adoption; if this becomes a core feature it must be trust- and effort-optimized. (Claim: CLAIM-20260224-012)

### Open questions to validate (top)
- Which patient friction points dominate in the target market: logistics, stigma, affordability, or “normal results” interpretation? (Claim basis: CLAIM-20260224-009)
- What minimum evidence package (clinical + economic) is sufficient for the insurer buyer committee in the target geography? (Claim basis: CLAIM-20260224-016)
- What buyer-side validation workflows are feasible given limited internal capacity? (Claim: CLAIM-20260224-020)

## 9) What Not To Do (Anti-Patterns)

- Do not treat engagement metrics as the primary proof of value to payers. (Claim: CLAIM-20260224-016)
- Do not treat “more AI” as inherently a delighter; governance and harm modes are first-order constraints. (Claims: CLAIM-20260224-028, CLAIM-20260224-027)
- Do not present one-size-fits-all escalation guidance; anxiety amplification is a known risk. (Claim: CLAIM-20260224-008)

## 10) Recommended Evidence Expansions (Next Iteration)

These items are recommended to make the analysis more complete and/or better localized. They are intentionally listed as *next evidence to gather*, not as current “facts.”

### If the product targets Italy/SSN (DeepWiki context)
- Add Italy/SSN system constraint sources as first-class evidence (waiting times, outcomes, regional variance): PNGLA, PNE, LEA/NSG, SDO, ISTAT EHIS.
- Redefine/replace the current `insurer` cohort (US CMS-centric) with a public/SSN purchaser/governance cohort and rebuild the purchaser claim set accordingly.

### Patient journey enrichment
- Add condition complexity/scoring sources (e.g., Orphanet, Italian pathway documentation) to ground “how many specialists” and “in what sequence” for complex pathways.

### Documentation for this expansion
- See `methodology/potential_extra_data_analysis.md` for the DeepWiki-derived opportunities and suggested integrations.
