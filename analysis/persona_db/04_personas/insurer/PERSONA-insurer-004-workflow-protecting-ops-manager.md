---
id: PERSONA-insurer-004-workflow-protecting-ops-manager
cohort: insurer
role: User
status: Draft
version: 1.0.0
last_reviewed: 2026-02-24
derived_from_runs:
  - RUN-20260224-insurer-do-001
  - RUN-20260224-insurer-say-001
  - RUN-20260224-insurer-kano-001
  - RUN-20260225-insurer-do-001
  - RUN-20260225-insurer-say-001
cluster_refs:
  - CLUSTER-insurer-002-operational-and-integration-burden
claim_refs:
  - CLAIM-20260225-014
  - CLAIM-20260225-015
  - CLAIM-20260225-013
  - CLAIM-20260225-044
  - CLAIM-20260225-045
  - CLAIM-20260225-046
  - CLAIM-20260225-047
---

# Persona: Workflow-Protecting Ops Manager

> "If integration doesn't fit the national backbone constraints, operations will break at scale." (Claim: CLAIM-20260225-014)

## Primary Job-to-be-Done
Keep operations stable by preventing manual work and workflow surprises while meeting interoperability and governance constraints (EDS/FSE interaction; DPIA-ready privacy compliance). (Claims: CLAIM-20260225-044, CLAIM-20260225-014, CLAIM-20260225-046)

## Context of Use
Operates under interoperability and measurement/privacy expectations; adoption fails when integration is not feasible with EDS/FSE constraints or when governance is unclear. (Claims: CLAIM-20260225-014, CLAIM-20260225-015)

## DO/SAY/WANT Snapshot
- **DO**: Protects workflows and rejects solutions that introduce manual steps, reconciliation, or training burden. (Claims: CLAIM-20260225-044, CLAIM-20260225-045)
- **SAY**: Frames governance and auditability as stop conditions; DPIA/legal basis ambiguity kills momentum. (Claim: CLAIM-20260225-046)
- **WANT**: A workflow impact map plus integration checklist and monitoring/governance pack that prevents operational surprises. (Claim: CLAIM-20260225-047)

## Empathy Map Signals
- **Think**: If operations break, ops will be blamed; risk is personal and reputational. (Claim: CLAIM-20260225-046)
- **Feel**: Confidence only when end-to-end workflow impact is mapped and no manual work is introduced. (Claim: CLAIM-20260225-047)
- **Say**: "If the tool creates manual work, adoption fails." (Claim: CLAIM-20260225-044)
- **Do**: Blocks proposals that cannot be tested realistically against clinical-system constraints and capacity. (Claim: CLAIM-20260225-045)

## Procurement Journey Notes
- **Breakdown**: Pilots look good on paper but fail in practice when manual steps appear or DPIA/governance cannot be resolved. (Claims: CLAIM-20260225-045, CLAIM-20260225-046)
- **30% easier**: Provide governance pack inputs (controller/processor mapping, DPIA template inputs, logging spec) plus a monitoring/workflow impact map. (Claims: CLAIM-20260225-047, CLAIM-20260225-046)

## Representative Interview Excerpts (Variants)
- **Variant A**: "My job is to protect workflows. If the tool creates manual work, adoption fails." (Claim: CLAIM-20260225-044)
- **Variant B**: "Provide a governance pack: controller/processor mapping, DPIA template inputs, audit logging spec." (Claim: CLAIM-20260225-047)

## Top 3 Motivations and Pain Points (SAY/DO)
- **Motivation/Pain 1**: Needs workflow protection: manual steps, reconciliation, or hidden workload are adoption killers. (Claims: CLAIM-20260225-044, CLAIM-20260225-045)
- **Motivation/Pain 2**: Needs DPIA-ready governance clarity (controller/access/consent) and auditability so compliance is sign-offable. (Claims: CLAIM-20260225-046, CLAIM-20260225-015)
- **Motivation/Pain 3**: Needs procurement alignment so workflow impact maps, monitoring specs, and integration checklists are part of the decision package. (Claims: CLAIM-20260225-047, CLAIM-20260225-013)

## Ranked Decision Criteria (SAY/VALUE)
1. **Interoperability fit**: Alignment with EDS/FSE and national system constraints. (Claim: CLAIM-20260225-014)
2. **Measurement + privacy**: Outcome measurement criteria and privacy-compliant data use expectations. (Claim: CLAIM-20260225-015)
3. **HTA/procurement fit**: Evidence framing that supports procurement decisions and accounts for operational feasibility. (Claim: CLAIM-20260225-013)

## Barriers, Anxieties, and Triggers (DO)
- **Barriers**: Integration feasibility with the national backbone can block adoption. (Claim: CLAIM-20260225-014)
- **Anxieties**: Privacy compliance failures create high operational and reputational risk. (Claim: CLAIM-20260225-015)
- **Triggers**: Procurement decisions require appraisal-grade evidence readiness. (Claim: CLAIM-20260225-013)

## Preferred Channels and Touchpoints (DO)
- Integration programs tied to national backbone constraints (EDS/FSE interaction) and data governance. (Claims: CLAIM-20260225-014, CLAIM-20260225-015)

## Design Implications
- **Messaging**: Emphasize interoperability fit (EDS/FSE) and measurable outcomes under compliant data governance. (Claims: CLAIM-20260225-014, CLAIM-20260225-015)
- **Offer**: Provide workflow impact maps, integration checklists, monitoring specs, and governance packs that make interoperability and compliance feasible without manual work. (Claims: CLAIM-20260225-047, CLAIM-20260225-046)
- **UX/Service**: Make integration constraints explicit and reduce operational surprises. (Claim: CLAIM-20260225-014)

---

### Rule: No Uncited Assertions
Every bullet point and statement in this persona must cite at least one `CLAIM-*` identifier. No fictional storytelling or demographics-only profiles.
