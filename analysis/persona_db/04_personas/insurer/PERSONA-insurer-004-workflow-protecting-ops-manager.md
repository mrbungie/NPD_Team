---
id: PERSONA-insurer-004-workflow-protecting-ops-manager
cohort: insurer
role: User
status: Draft
version: 1.0.0
last_reviewed: 2026-02-24
derived_from_runs:
  - RUN-20260224-insurer-do-001
  - RUN-20260224-insurer-kano-001
cluster_refs:
  - CLUSTER-insurer-002-operational-and-integration-burden
claim_refs:
  - CLAIM-20260224-021
  - CLAIM-20260224-025
  - CLAIM-20260224-026
  - CLAIM-20260224-027
  - CLAIM-20260224-022
---

# Persona: Workflow-Protecting Ops Manager

> "Executing these contracts remains challenging... with limited capacity." (Claim: CLAIM-20260224-021)

## Primary Job-to-be-Done
Keep operations compliant and stable while reducing administrative burden in prior authorization and related workflows. (Claims: CLAIM-20260224-026, CLAIM-20260224-027)

## Context of Use
Operates under API modernization and prior auth operational requirements; adoption fails when it increases burden or fragments workflows. (Claims: CLAIM-20260224-025, CLAIM-20260224-022)

## Top 3 Motivations and Pain Points (SAY/DO)
- **Motivation/Pain 1**: Limited capacity to negotiate/adjudicate complex contracts and reporting requirements. (Claim: CLAIM-20260224-021)
- **Motivation/Pain 2**: Must hit regulatory obligations for FHIR APIs and prior auth requirements. (Claims: CLAIM-20260224-025, CLAIM-20260224-026)
- **Motivation/Pain 3**: Worries automation introduces harm modes or escalates disputes/appeals burden. (Claim: CLAIM-20260224-027)

## Ranked Decision Criteria (SAY/VALUE)
1. **Compliance fit**: Align with required APIs and prior auth process rules. (Claims: CLAIM-20260224-025, CLAIM-20260224-026)
2. **Operational burden**: Reduce fragmentation and integration complexity (point solution fatigue drivers). (Claim: CLAIM-20260224-022)
3. **Governance**: Prevent harms from AI-supported workflows; monitoring and accountability. (Claim: CLAIM-20260224-027)

## Barriers, Anxieties, and Triggers (DO)
- **Barriers**: Integration complexity and training burden from disparate technologies. (Claim: CLAIM-20260224-022)
- **Anxieties**: Wrongful denials and harm narratives from AI use in utilization review. (Claim: CLAIM-20260224-027)
- **Triggers**: Regulatory compliance dates and reporting requirements. (Claim: CLAIM-20260224-026)

## Preferred Channels and Touchpoints (DO)
- Prior authorization workflows and compliance programs tied to API implementation. (Claims: CLAIM-20260224-025, CLAIM-20260224-026)

## Design Implications
- **Messaging**: Emphasize burden reduction and compliance alignment, not just innovation. (Claims: CLAIM-20260224-022, CLAIM-20260224-025)
- **Offer**: Provide implementation support that reduces contract/admin overhead. (Claim: CLAIM-20260224-021)
- **UX/Service**: Support decision timeframes, denial reasons, and reporting. (Claim: CLAIM-20260224-026)
- **Trust**: Embed governance and monitoring for AI-supported decisions. (Claim: CLAIM-20260224-027)
- **Channel**: Integrate with FHIR API and prior auth modernization initiatives. (Claim: CLAIM-20260224-025)

---

### Rule: No Uncited Assertions
Every bullet point and statement in this persona must cite at least one `CLAIM-*` identifier. No fictional storytelling or demographics-only profiles.
