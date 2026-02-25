---
id: PERSONA-insurer-003-pilot-forward-product-owner
cohort: insurer
role: Buyer
status: Draft
version: 1.0.0
last_reviewed: 2026-02-24
derived_from_runs:
  - RUN-20260224-insurer-do-001
  - RUN-20260224-insurer-say-001
  - RUN-20260224-insurer-kawakita-001
  - RUN-20260225-insurer-do-001
  - RUN-20260225-insurer-say-001
cluster_refs:
  - CLUSTER-insurer-002-operational-and-integration-burden
claim_refs:
  - CLAIM-20260225-013
  - CLAIM-20260225-014
  - CLAIM-20260225-015
  - CLAIM-20260225-040
  - CLAIM-20260225-041
  - CLAIM-20260225-042
  - CLAIM-20260225-043
---

# Persona: Pilot-Forward Product Owner

> "If it's not interoperable with EDS/FSE, it won't scale beyond a local pilot." (Claim: CLAIM-20260225-014)

## Primary Job-to-be-Done
Move quickly from evaluation to deployment while maintaining a credible cross-Region scale path (EDS/FSE-aligned integration) and meeting evidence/measurement expectations. (Claims: CLAIM-20260225-014, CLAIM-20260225-013, CLAIM-20260225-040)

## Context of Use
Works inside procurement/governance programs where appraisal-grade evidence and interoperability constraints shape what can scale. (Claims: CLAIM-20260225-013, CLAIM-20260225-014)

## DO/SAY/WANT Snapshot
- **DO**: Runs pilots with scale-out in mind and avoids one-off local integrations that trigger leadership veto. (Claim: CLAIM-20260225-040)
- **SAY**: Treats "integration story" and operational feasibility as core success criteria, not post-pilot cleanup. (Claims: CLAIM-20260225-041, CLAIM-20260225-042)
- **WANT**: Pre-built connectors aligned to backbone constraints plus shared measurement and rollout playbooks to make cross-Region scaling predictable. (Claim: CLAIM-20260225-043)

## Empathy Map Signals
- **Think**: A pilot without a path to scale is a political risk and will be shut down. (Claim: CLAIM-20260225-040)
- **Feel**: Confidence with an integration checklist and measured outcome; anxiety when plans are vague promises. (Claim: CLAIM-20260225-042)
- **Say**: "The pilot must produce a measurable signal and an integration path that scales." (Claim: CLAIM-20260225-042)
- **Do**: Pushes for predictable integration behavior and minimal operational disruption to avoid rework. (Claims: CLAIM-20260225-041, CLAIM-20260225-042)

## Procurement Journey Notes
- **Breakdown**: Scale-out is blocked when data does not flow reliably or training/integration load is underestimated. (Claim: CLAIM-20260225-041)
- **30% easier**: Ship connectors + measurement/rollout playbooks as part of the pilot package. (Claim: CLAIM-20260225-043)

## Representative Interview Excerpts (Variants)
- **Variant A**: "I need a pilot that can scale across two Regions without re-building integration from scratch." (Claim: CLAIM-20260225-040)
- **Variant B**: "If it creates manual reconciliation, it won't survive." (Claim: CLAIM-20260225-041)

## Top 3 Motivations and Pain Points (SAY/DO)
- **Motivation/Pain 1**: Needs appraisal-grade evidence framing that supports procurement recommendations. (Claim: CLAIM-20260225-013)
- **Motivation/Pain 2**: Pilots fail at scale when integration is local-only, data flow is unreliable, or training/manual steps appear. (Claims: CLAIM-20260225-041, CLAIM-20260225-014)
- **Motivation/Pain 3**: Needs a measurable pilot signal and predictable integration behavior early, plus playbooks/connectors to avoid rework at rollout time. (Claims: CLAIM-20260225-042, CLAIM-20260225-043)

## Ranked Decision Criteria (SAY/VALUE)
1. **Interoperability feasibility**: Works with national backbone constraints (EDS/FSE interaction) and scales cross-Region without manual reconciliation. (Claims: CLAIM-20260225-014, CLAIM-20260225-041)
2. **HTA-ready evidence**: Evidence artifacts that can support appraisal and procurement recommendations. (Claim: CLAIM-20260225-013)
3. **Measurement + privacy**: Outcome measurement criteria and privacy-compliant data use expectations. (Claim: CLAIM-20260225-015)

## Barriers, Anxieties, and Triggers (DO)
- **Barriers**: Interoperability constraints can make integration slow or block scale-out beyond a pilot. (Claim: CLAIM-20260225-014)
- **Anxieties**: Misalignment with EDS/FSE constraints creates non-scalable local solutions. (Claim: CLAIM-20260225-014)
- **Triggers**: Procurement recommendations require appraisal-grade evidence readiness. (Claim: CLAIM-20260225-013)

## Preferred Channels and Touchpoints (DO)
- Procurement review and appraisal processes aligned to HTA and interoperability constraints. (Claims: CLAIM-20260225-013, CLAIM-20260225-014)

## Design Implications
- **Messaging**: Lead with interoperability fit (EDS/FSE) and HTA-ready evidence framing. (Claims: CLAIM-20260225-014, CLAIM-20260225-013)
- **Offer**: Provide outcome measurement and privacy compliance artifacts early (especially for AI/DTx). (Claim: CLAIM-20260225-015)
- **UX/Service**: Make integration constraints explicit and design for cross-Region scaling. (Claim: CLAIM-20260225-014)

---

### Rule: No Uncited Assertions
Every bullet point and statement in this persona must cite at least one `CLAIM-*` identifier. No fictional storytelling or demographics-only profiles.
