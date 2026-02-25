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
cluster_refs:
  - CLUSTER-insurer-001-evidence-and-roi-gating
claim_refs:
  - CLAIM-20260224-016
  - CLAIM-20260224-019
  - CLAIM-20260224-020
  - CLAIM-20260224-025
  - CLAIM-20260224-026
  - CLAIM-20260224-028
---

# Persona: Evidence Assurance Analyst

> "Most of the ROI analyses we get are built by the vendors themselves... There's no way we can validate those claims internally." (Claim: CLAIM-20260224-020)

## Primary Job-to-be-Done
Reduce purchase and operational risk by demanding measurable outcomes and auditability before adoption. (Claim: CLAIM-20260224-016)

## Context of Use
Evaluates digital health solutions within structured purchasing cycles; focuses on evidence quality and outcome measurement. (Claims: CLAIM-20260224-017, CLAIM-20260224-019)

## Top 3 Motivations and Pain Points (SAY/DO)
- **Motivation/Pain 1**: Rejects engagement-only claims; needs measurable clinical and economic outcomes. (Claims: CLAIM-20260224-016, CLAIM-20260224-019)
- **Motivation/Pain 2**: Distrusts vendor-built ROI analyses and needs validation paths. (Claim: CLAIM-20260224-020)
- **Motivation/Pain 3**: Must ensure solutions do not introduce harms in automated decision processes. (Claim: CLAIM-20260224-028)

## Ranked Decision Criteria (SAY/VALUE)
1. **Auditability**: Ability to validate claims and measurement transparency. (Claim: CLAIM-20260224-020)
2. **Outcome relevance**: Clinical + financial outcome measures, not proxy engagement. (Claim: CLAIM-20260224-019)
3. **Compliance alignment**: Fit with payer API and prior auth requirements. (Claims: CLAIM-20260224-025, CLAIM-20260224-026)

## Barriers, Anxieties, and Triggers (DO)
- **Barriers**: Measurement is operationally hard when metrics are siloed or unverifiable. (Claim: CLAIM-20260224-020)
- **Anxieties**: AI tools can reinforce unjust denial patterns and create harm. (Claim: CLAIM-20260224-028)
- **Triggers**: New vendor pitches and renewal cycles force outcome scrutiny. (Claim: CLAIM-20260224-017)

## Preferred Channels and Touchpoints (DO)
- Survey-informed purchasing and review cycles; recurring evaluation of offerings. (Claim: CLAIM-20260224-017)

## Design Implications
- **Messaging**: Lead with measurable outcomes and methods; avoid engagement-first positioning. (Claim: CLAIM-20260224-016)
- **Offer**: Provide evidence packs and measurement transparency to reduce ROI distrust. (Claim: CLAIM-20260224-020)
- **UX/Service**: Build reporting aligned to clinical + financial outcomes. (Claim: CLAIM-20260224-019)
- **Trust**: Include governance mechanisms and monitoring for harm modes. (Claim: CLAIM-20260224-028)
- **Channel**: Demonstrate compliance fit (FHIR APIs, prior auth requirements). (Claims: CLAIM-20260224-025, CLAIM-20260224-026)

---

### Rule: No Uncited Assertions
Every bullet point and statement in this persona must cite at least one `CLAIM-*` identifier. No fictional storytelling or demographics-only profiles.
