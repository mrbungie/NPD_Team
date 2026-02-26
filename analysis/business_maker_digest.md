# Business Maker Digest (Italy/SSN)

This is a decision-maker-friendly synthesis that combines:
- qualitative evidence from `analysis/final_analysis_summary.md` (claims/personas), and
- initial national numeric signals from `analysis/r_pipeline/report_summary.md` (Eurostat EHIS/SHA + Orphadata metadata surface).

Geographic scope: Italy (SSN and regional context).

## What To Remember (30 seconds)

- Patient value: reduce uncertainty without amplifying anxiety; preserve legitimacy; translate messy stories into clinician-usable next steps.
- System reality: access friction exists at scale (unmet need due to waiting lists: 29.9% in 2014 -> 25.2% in 2019; Eurostat EHIS).
- Procurement reality: adoption is gated by HTA framing, measurable outcomes + privacy compliance, and interoperability constraints (EDS/FSE).
- Equity reality: unmet-need inequality by education persists (gap: 7.6 pp -> 6.6 pp; Eurostat EHIS).

## Customer Journey Map A: Patient With Unknown/Unexplained Symptoms

| Phase | What they do | Touchpoints | Pain points | What a winning product does | Evidence anchors |
| :--- | :--- | :--- | :--- | :--- | :--- |
| Symptom onset | Notice unfamiliar symptom; immediate uncertainty | Home; phone; family | Confusion; fear; lack of a plan | Capture context fast; normalize uncertainty; avoid alarmist framing | CLAIM-20260224-004, CLAIM-20260224-008 |
| First-line uncertainty management | Search + symptom checker; often seek peers for similarity | Search engines; symptom checker; online communities | Night-time panic loops; credibility anxiety | Calibrated next steps + safety nets; reduce spirals; language that preserves dignity | CLAIM-20260225-024, CLAIM-20260224-003, CLAIM-20260224-010 |
| Branch to care | Decide to self-treat/wait/book/urgent care | MMG; booking systems; Guardia Medica/PS | Appointment logistics; stigma/dismissal risk; cost/travel | Provide a clear forked plan (if X then Y); prep for MMG conversation | CLAIM-20260224-005, CLAIM-20260224-009, CLAIM-20260225-026 |
| Diagnostics + handoffs | Tests, referrals, specialist loops | Labs; specialists; FSE context | "Normal" results with no next owner; repeat-story fatigue; momentum loss | Clinician-ready one-page summary; continuity; explicit next-step ownership | CLAIM-20260224-014, CLAIM-20260225-019, CLAIM-20260225-031 |
| Follow-up and continuity | Manage outcomes; iterate; keep trying | MMG follow-ups; specialist follow-ups | Restart-from-zero loops; fragmented records | Reusable artifact + timeline; reduce re-telling; handoff scaffolding | CLAIM-20260225-017, CLAIM-20260225-022 |

Numeric overlays (Italy, national-level proxies):
- Waiting-list unmet need remains high: 29.9% (2014) -> 25.2% (2019). (See `analysis/r_pipeline/report_summary.md` Q1)
- Handoff-risk proxy peaks in 45-54 and 55-64 (Italy, 2019). (See `analysis/r_pipeline/report_summary.md` Q3)

## Empathy Map A: Patient (Unknown/Unexplained Symptoms)

Think
- "If I don't explain it perfectly, they'll dismiss me."
- "What would make the plan change?"

Feel
- Anxiety (often at night), shame after dismissal, relief when a plan exists.

Say
- Similarity/validation language: "Is this happening to you?"
- Legitimacy: "None of us are lying."

Do
- Triages with tools + search; tests the story in communities; rehearses for clinical credibility.

Product implication
- The core deliverable is not "more information". It is a clinician-usable plan artifact that lowers emotional and administrative load.

## Customer Journey Map B: Payer / Procurement Stakeholder (Italy/SSN)

This corresponds to the repo cohort `insurer` but in Italy scope it is procurement/governance stakeholders (Regions/ASL, hospitals, national constraints), not US-style private payers.

| Gate / Phase | What they do | What kills the deal | What they need from a vendor/product | Evidence anchors |
| :--- | :--- | :--- | :--- | :--- |
| HTA/appraisal framing | Translate a solution into appraisal and recommendation logic | Marketing-only narratives; no appraisal-grade artifacts | HTA-ready evidence dossier framing + evidence map | CLAIM-20260225-013 |
| Outcomes + measurement | Ask: what outcomes; how measured; who owns monitoring | Outcome ownership unclear; metrics are vanity/engagement-only | Outcome measurement plan + data strategy | CLAIM-20260225-015, CLAIM-20260225-038 |
| Interoperability | Check fit with EDS/FSE and regional stacks | "We integrate" claims without flows/specs | Explicit data flows, standards mapping, testability | CLAIM-20260225-014, CLAIM-20260225-034, CLAIM-20260225-035 |
| Governance/DPIA | Validate controller/processor, lawful basis, auditability | Unclear governance; privacy veto | Governance pack: DPIA inputs, roles, access controls, audit logs | CLAIM-20260225-033, CLAIM-20260225-046 |
| Procurement/contract | Select contracting model; assess operational burden | Manual reconciliation/training burden; vendor lock-in | Operational feasibility proof + deployment checklist | CLAIM-20260225-047 |
| Pilot -> scale | Decide if it scales cross-Region | Monitoring burden; integration fragility | Reference implementation + monitoring/reporting plan | CLAIM-20260225-035, CLAIM-20260225-038 |

Numeric overlays (Italy, context signals):
- Financing mix (latest 2024): 74.25% public/compulsory, 3.44% voluntary, 22.31% out-of-pocket. (See `analysis/r_pipeline/report_summary.md` Q5)
- Data readiness surfaces exist (EHIS/SHA + Orphadata metadata), but this is not yet Region-level operational data. (See Q6)

## Empathy Map B: Procurement/Governance Stakeholder (Italy/SSN)

Think
- "If governance is unclear, it is dead on arrival."
- "Integration is the project. If it fails, the product doesn't exist."

Feel
- Anxious about audit/reputational risk; skeptical of ROI claims without independent validation.

Say
- "HTA-ready evidence dossier, not marketing claims."
- "Outcome measurement + privacy compliance."

Do
- Forces checklists: interoperability mapping, DPIA readiness, measurable outcomes, monitoring ownership.

## What This Means For Go-To-Market and Product

- Lead patient experience with a "plan artifact" (summary + forked next steps + visit scaffolding) that reduces retelling and uncertainty loops.
- Lead procurement with a "governance + evidence pack" (HTA framing, outcomes plan, DPIA inputs, interoperability mapping, reference implementation).
- Treat equity and access as first-class constraints: design for high-friction SSN pathways, not idealized flows.

## How To Reproduce Numbers

Run the numeric pipeline (writes outputs to `analysis/r_pipeline/outputs/`):

```bash
bash ./analysis/r_pipeline/run_r_pipeline.sh --phase all --strict
```
