# Final Analysis Summary (Downstream Product Development)

This document is the product-development-facing output of the synthetic persona work. It is grounded in the evidence chain in `methodology/persona_db/`.

## Evidence Chain (Audit Trail)
- Sources: `methodology/persona_db/01_sources/`
- Claims: `methodology/persona_db/02_claims/`
- Framework runs: `methodology/persona_db/03_framework_runs/`
- Personas: `methodology/persona_db/04_personas/`
- Synthesis + clusters: `methodology/persona_db/05_synthesis/`

## Target Cohorts (Do Not Mix)

### Cohort A: patient_unknown_symptom (patients with unknown/unexplained symptoms)
Canonical patterns:
- New/unfamiliar symptoms strongly drive symptom-checker use. (Claim: CLAIM-20260224-004)
- Patients use online communities for information-seeking and support-seeking when causes/treatments are uncertain. (Claim: CLAIM-20260224-002)
- Follow-through after self-triage branches (self-treat, wait, seek care, ignore guidance); clinician disclosure of tool use is inconsistent. (Claim: CLAIM-20260224-005)
- Access barriers (stigma, appointment logistics, normal test results, affordability) materially shape persistence and outcomes. (Claim: CLAIM-20260224-009)

### Cohort B: insurer (payers / purchasers)
Canonical patterns:
- Purchasers demand measurable clinical and economic outcomes, not just engagement metrics. (Claim: CLAIM-20260224-016)
- Purchasers report skepticism about vendor-built ROI analyses and limited ability to validate assumptions internally. (Claim: CLAIM-20260224-020)
- Performance-based contracting is increasingly used/planned, tying payments to outcomes. (Claim: CLAIM-20260224-018)
- CMS requirements drive payer interoperability and prior authorization workflows (FHIR APIs, timeframes, denial reasons, reporting). (Claims: CLAIM-20260224-025, CLAIM-20260224-026)
- AI adoption in utilization review/prior authorization creates governance needs to avoid harms (e.g., wrongful denials). (Claim: CLAIM-20260224-027)

---

## Segmentation (What Product Teams Should Design For)

### Patients: 4 synthetic personas to design against
1. Evidence-Driven Navigator: `methodology/persona_db/04_personas/patient_unknown_symptom/PERSONA-patient_unknown_symptom-001-evidence-driven-navigator.md`
2. Community-Dependent Seeker: `methodology/persona_db/04_personas/patient_unknown_symptom/PERSONA-patient_unknown_symptom-002-community-dependent-seeker.md`
3. Anxious Reassurance Seeker: `methodology/persona_db/04_personas/patient_unknown_symptom/PERSONA-patient_unknown_symptom-003-anxious-reassurance-seeker.md`
4. Legitimacy-Fatigue Survivor: `methodology/persona_db/04_personas/patient_unknown_symptom/PERSONA-patient_unknown_symptom-004-legitimacy-fatigue-survivor.md`

Separating variables (Observed):
- Anxiety amplification risk in self-triage outputs. (Claim: CLAIM-20260224-008)
- Reliance on peer similarity seeking vs tool-driven navigation. (Claim: CLAIM-20260224-002)
- Intensity of access friction and legitimacy burden. (Claims: CLAIM-20260224-009, CLAIM-20260224-010)

### Insurers: 4 synthetic personas to sell/implement through
1. Evidence Assurance Analyst: `methodology/persona_db/04_personas/insurer/PERSONA-insurer-001-evidence-assurance-analyst.md`
2. ROI Governance Executive: `methodology/persona_db/04_personas/insurer/PERSONA-insurer-002-roi-governance-executive.md`
3. Pilot-Forward Product Owner: `methodology/persona_db/04_personas/insurer/PERSONA-insurer-003-pilot-forward-product-owner.md`
4. Workflow-Protecting Ops Manager: `methodology/persona_db/04_personas/insurer/PERSONA-insurer-004-workflow-protecting-ops-manager.md`

Separating variables (Observed):
- Auditability rigor vs speed-to-adoption pressure. (Claim: CLAIM-20260224-020)
- Operational capacity constraints and integration burden. (Claims: CLAIM-20260224-021, CLAIM-20260224-022)
- Risk posture around AI in coverage decisions. (Claim: CLAIM-20260224-027)

---

## Kano Priorities (What Is Basic vs Differentiating)

### Patients (patient_unknown_symptom)
Basics (absence causes immediate dissatisfaction or abandonment):
- Guidance that does not unnecessarily alarm users and preserves trust during uncertainty. (Claim: CLAIM-20260224-008)

Performance (more/better increases satisfaction):
- Better personalization and nuanced symptom capture. (Claim: CLAIM-20260224-006)
- Support for navigation friction (logistics, normal results, affordability). (Claim: CLAIM-20260224-009)

Delighters (unexpected value; creates pull if done well):
- Clinician-ready outputs that shorten delays and reduce repetition. (Claim: CLAIM-20260224-014)
- Explicit legitimacy support (language/structure acknowledging stigma and "being believed" needs). (Claim: CLAIM-20260224-010)

### Insurers (insurer)
Basics:
- Compliance alignment with required payer FHIR APIs and prior authorization operational requirements. (Claims: CLAIM-20260224-025, CLAIM-20260224-026)
- Governance for AI-supported decisions to reduce harm risk and wrongful denials. (Claim: CLAIM-20260224-028)

Performance:
- ROI auditability and validation of claims. (Claim: CLAIM-20260224-020)
- Outcome measurement prioritizing clinical + financial outcomes over engagement. (Claim: CLAIM-20260224-019)

Delighters:
- Administrative burden reduction without sacrificing compliance or increasing harm risk. (Claim: CLAIM-20260224-028)

---

## Product Implications (What To Build)

### 1) Patient-side: "Uncertainty to Clinician" pipeline
Observed need space:
- Patients self-triage at the onset of new symptoms and seek peer validation. (Claims: CLAIM-20260224-004, CLAIM-20260224-002)
- Patients face stigma/logistics/normal-results friction that disrupts follow-through. (Claim: CLAIM-20260224-009)

Downstream build direction (Inferred from observed claims):
- A flow that captures nuanced symptoms + context (personalization) and produces a clinician-ready summary.
  - Basis: users want nuanced capture + personalization (Claim: CLAIM-20260224-006) and clinician-ready artifacts can combat diagnostic delays (Claim: CLAIM-20260224-014).
- A "calibrated next steps" presentation that avoids unnecessary escalation and anxiety amplification.
  - Basis: risk-averse outputs can unsettle health-anxious users (Claim: CLAIM-20260224-008).

### 2) Patient-side: legitimacy + follow-through support
Observed need space:
- Legitimacy-seeking language and stigma concerns exist in persistent-symptom journeys. (Claim: CLAIM-20260224-010)

Downstream build direction (Inferred):
- UX patterns and content that validate experience, explain uncertainty, and support credible communication.
  - Basis: legitimacy burden (Claim: CLAIM-20260224-010) plus clinician-ready outputs (Claim: CLAIM-20260224-014).

### 3) Insurer-side: outcomes, auditability, and contract readiness
Observed need space:
- Purchasers require measurable clinical/economic outcomes and distrust vendor ROI assumptions. (Claims: CLAIM-20260224-016, CLAIM-20260224-020)
- PBC is increasingly used; contracts tie payment to outcomes. (Claim: CLAIM-20260224-018)

Downstream build direction (Inferred):
- A measurement and reporting approach that is (a) outcomes-first, (b) auditable, and (c) PBC-friendly.
  - Basis: outcomes gating (Claim: CLAIM-20260224-016), shift away from engagement metrics (Claim: CLAIM-20260224-019), PBC reality (Claim: CLAIM-20260224-018).

### 4) Insurer-side: compliance + governance as product requirements
Observed constraints:
- CMS requires payer FHIR APIs and prior auth workflow constraints (timeframes, denial reasons, reporting). (Claims: CLAIM-20260224-025, CLAIM-20260224-026)
- AI use in utilization review increases governance needs to avoid harms. (Claim: CLAIM-20260224-027)

Downstream build direction (Inferred):
- Treat interoperability, workflow fit, and governance as must-have nonfunctional requirements (NFRs), not add-ons.
  - Basis: compliance and harm risk claims above.

---

## What Teams Should Use Day-to-Day

1) When defining MVP scope
- Use the Kano lists above as the prioritization frame.
- Use patient personas for UX prioritization and messaging.
- Use insurer personas to define evidence artifacts, integration posture, and sales enablement.

2) When writing PRDs
- Reference the relevant persona file(s) and list the supporting `CLAIM-*` IDs.
- If a requirement cannot be tied to a `CLAIM-*`, label it as an assumption and add an explicit validation plan (see `methodology/ai_methodology.md`).

3) When designing experiments
- Patient experiments should test: anxiety-calibrated guidance, personalization usefulness, and clinician-handoff utility. (Claims: CLAIM-20260224-008, CLAIM-20260224-006, CLAIM-20260224-014)
- Insurer experiments should test: outcome measurement feasibility, auditability workflows, and admin-burden reduction. (Claims: CLAIM-20260224-019, CLAIM-20260224-020, CLAIM-20260224-028)

---

## Known Gaps (Explicitly Not Proven Yet)

These are plausible, but not yet grounded strongly enough to treat as core truths in product decisions:
- Exact ROI thresholds and timelines by insurer segment (needs primary purchaser interviews beyond current sources). (Claim: CLAIM-20260224-020)
- How strongly portal fragmentation drives repeat-history burden specifically for unknown-symptom patients (needs primary qualitative data). (Claim: CLAIM-20260224-011)

If these become central product bets, capture them as ASSUMED with an expiration and validation method per `methodology/persona_db/00_rules/rules.md`.
