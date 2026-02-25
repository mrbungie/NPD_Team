---
id: PERSONA-insurer-001-evidence-assurance-analyst
cohort: insurer
role: Influencer
status: Draft
version: 1.0.0
last_reviewed: 2026-02-24
derived_from_runs:
  - RUN-20260224-insurer-do-001
  - RUN-20260224-insurer-say-001
  - RUN-20260224-insurer-kawakita-001
  - RUN-20260224-insurer-kano-001
  - RUN-20260225-insurer-do-001
  - RUN-20260225-insurer-say-001
cluster_refs:
  - CLUSTER-insurer-001-evidence-and-roi-gating
claim_refs:
  - CLAIM-20260225-013
  - CLAIM-20260225-015
  - CLAIM-20260225-014
  - CLAIM-20260225-032
  - CLAIM-20260225-033
  - CLAIM-20260225-034
  - CLAIM-20260225-035
---

# Persona: Evidence Assurance Analyst

> "We need an HTA-ready evidence dossier, not marketing claims." (Claim: CLAIM-20260225-013)

## Primary Job-to-be-Done
Reduce adoption risk by requiring appraisal-grade evidence, measurable outcomes framing, and interoperability fit with national backbone constraints. (Claims: CLAIM-20260225-013, CLAIM-20260225-015, CLAIM-20260225-014)

## Context of Use
Evaluates digital health solutions through an appraisal lens and checks interoperability constraints with the national backbone (EDS/FSE interaction). (Claims: CLAIM-20260225-013, CLAIM-20260225-014)

## DO/SAY/WANT Snapshot
- **DO**: Treats integration feasibility and DPIA readiness as first-order gating work, not downstream implementation detail. (Claims: CLAIM-20260225-034, CLAIM-20260225-014)
- **SAY**: Rejects marketing language and demands dossier-ready evidence and crisp outcomes mapping. (Claims: CLAIM-20260225-032, CLAIM-20260225-013)
- **WANT**: Explicit mappings of standards, data flows, governance roles, and measured outcomes, backed by reference implementations/checklists. (Claim: CLAIM-20260225-035)

## Empathy Map Signals
- **Think**: Hidden veto risk is reputational; weak governance can become a scandal. (Claim: CLAIM-20260225-033)
- **Feel**: Confidence when evidence is appraisal-ready; anxiety when outcomes are generic or black-box. (Claim: CLAIM-20260225-032)
- **Say**: "Without a measurable outcomes plan and privacy compliance, adoption is not defensible." (Claim: CLAIM-20260225-033)
- **Do**: Pushes for controller/processor clarity, audit logs, and role-based access requirements early. (Claim: CLAIM-20260225-033)

## Procurement Journey Notes
- **Breakdown**: Proposals die when IT flags non-interoperability with the backbone or privacy teams cannot validate DPIA/governance inputs. (Claim: CLAIM-20260225-034)
- **30% easier**: Provide a single pack that maps standards compliance, data flows, and outcome measurement, plus checklists/reference implementations. (Claim: CLAIM-20260225-035)

## Representative Interview Excerpts (Variants)
- **Variant A**: "Untrustworthy is when the vendor can't map outcomes to an appraisal-ready dossier..." (Claim: CLAIM-20260225-032)
- **Variant B**: "Integration is the project. If integration fails, the tool doesn't exist." (Claim: CLAIM-20260225-034)

## Top 3 Motivations and Pain Points (SAY/DO)
- **Motivation/Pain 1**: Needs HTA-ready evidence artifacts that support appraisal and procurement recommendations (dossier-ready, not marketing). (Claims: CLAIM-20260225-013, CLAIM-20260225-032)
- **Motivation/Pain 2**: Needs outcome measurement plus governance clarity (controller/processor mapping, auditability) to make adoption defensible. (Claims: CLAIM-20260225-015, CLAIM-20260225-033)
- **Motivation/Pain 3**: Needs interoperability fit and explicit data-flow explanations to avoid non-scalable local integrations and stalled proposals. (Claims: CLAIM-20260225-014, CLAIM-20260225-034)

## Ranked Decision Criteria (SAY/VALUE)
1. **HTA-ready evidence**: Appraisal-grade artifacts that can support procurement decisions and be assembled into a dossier. (Claims: CLAIM-20260225-013, CLAIM-20260225-032)
2. **Measurement + privacy**: Outcome measurement criteria plus DPIA-ready governance clarity and auditability. (Claims: CLAIM-20260225-015, CLAIM-20260225-033, CLAIM-20260225-046)
3. **Interoperability fit**: Works with EDS/FSE constraints with explicit standards/data-flow mappings and reference artifacts. (Claims: CLAIM-20260225-014, CLAIM-20260225-035)

## Barriers, Anxieties, and Triggers (DO)
- **Barriers**: Defining outcome measurement and data governance that is compliant and feasible is non-trivial. (Claim: CLAIM-20260225-015)
- **Anxieties**: Non-compliant data use or unclear governance creates adoption risk. (Claim: CLAIM-20260225-015)
- **Triggers**: Procurement decisions require appraisal-grade evidence readiness. (Claim: CLAIM-20260225-013)

## Preferred Channels and Touchpoints (DO)
- Appraisal and recommendation artifacts used to support procurement decisions. (Claim: CLAIM-20260225-013)

## Design Implications
- **Messaging**: Lead with HTA-ready evidence framing, not engagement-first positioning. (Claim: CLAIM-20260225-013)
- **Offer**: Provide outcome measurement artifacts plus a governance pack (controller/processor mapping, DPIA inputs, audit logging) and standards/data-flow mappings. (Claims: CLAIM-20260225-015, CLAIM-20260225-033, CLAIM-20260225-035)
- **UX/Service**: Make interoperability constraints and integration approach explicit (EDS/FSE interaction). (Claim: CLAIM-20260225-014)

---

### Rule: No Uncited Assertions
Every bullet point and statement in this persona must cite at least one `CLAIM-*` identifier. No fictional storytelling or demographics-only profiles.
