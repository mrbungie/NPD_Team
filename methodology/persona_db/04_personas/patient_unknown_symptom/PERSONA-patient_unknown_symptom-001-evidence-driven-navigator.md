---
id: PERSONA-patient_unknown_symptom-001-evidence-driven-navigator
cohort: patient_unknown_symptom
role: User
status: Draft
version: 1.0.0
last_reviewed: 2026-02-24
derived_from_runs:
  - RUN-20260224-patient_unknown_symptom-do-001
  - RUN-20260224-patient_unknown_symptom-say-001
  - RUN-20260224-patient_unknown_symptom-kawakita-001
  - RUN-20260224-patient_unknown_symptom-kano-001
cluster_refs:
  - CLUSTER-patient_unknown_symptom-001-uncertainty-management
claim_refs:
  - CLAIM-20260224-001
  - CLAIM-20260224-002
  - CLAIM-20260224-004
  - CLAIM-20260224-005
  - CLAIM-20260224-006
  - CLAIM-20260224-008
  - CLAIM-20260224-009
  - CLAIM-20260224-010
  - CLAIM-20260224-011
  - CLAIM-20260224-012
  - CLAIM-20260224-013
  - CLAIM-20260224-014
---

# Persona: Evidence-Driven Navigator

> "This is happening to me." (Claim: CLAIM-20260224-002)

## Primary Job-to-be-Done
Reduce uncertainty from new symptoms and move toward the right care path without wasting time or credibility. (Claim: CLAIM-20260224-004)

## Context of Use
Often starts when new/unfamiliar symptoms appear; uses symptom checker apps and online sources before deciding on next steps. (Claims: CLAIM-20260224-004, CLAIM-20260224-005)

## Top 3 Motivations and Pain Points (SAY/DO)
- **Motivation/Pain 1**: Wants to validate whether symptoms are shared by others and get pattern clues from peers. (Claim: CLAIM-20260224-002)
- **Motivation/Pain 2**: Gets frustrated by access friction (stigma/logistics/"normal" results/affordability) that slows progress. (Claim: CLAIM-20260224-009)
- **Motivation/Pain 3**: Feels undermined when guidance escalates too aggressively or increases anxiety. (Claim: CLAIM-20260224-008)

## Ranked Decision Criteria (SAY/VALUE)
1. **Non-alarming guidance**: Must reduce uncertainty without triggering unnecessary escalation and anxiety. (Claim: CLAIM-20260224-008)
2. **Personalization**: Tools must reflect context and allow nuanced symptom description to be useful. (Claim: CLAIM-20260224-006)
3. **Clinician-ready output**: Wants outputs that can be used with clinicians to accelerate recognition/routing. (Claim: CLAIM-20260224-014)

## Barriers, Anxieties, and Triggers (DO)
- **Barriers**: Multi-portal fragmentation; consolidation is rare in practice. (Claims: CLAIM-20260224-011, CLAIM-20260224-012)
- **Anxieties**: Risk-averse triage and serious suggestions can unsettle. (Claim: CLAIM-20260224-008)
- **Triggers**: New and unfamiliar symptoms prompt immediate self-triage behavior. (Claim: CLAIM-20260224-004)

## Preferred Channels and Touchpoints (DO)
- Symptom checker apps: used when symptoms first occur to determine next action. (Claim: CLAIM-20260224-004)
- Online communities: used for information-seeking and support-seeking. (Claim: CLAIM-20260224-002)
- Patient portals / apps: used to access records, though fragmentation is common. (Claim: CLAIM-20260224-011)

## Design Implications
- **Messaging**: Validate legitimacy and "being believed" needs; avoid implying symptoms are imagined. (Claim: CLAIM-20260224-010)
- **Offer**: Provide structured outputs clinicians can use to reduce diagnostic delays. (Claim: CLAIM-20260224-014)
- **UX/Service**: Support nuanced symptom capture and personalization. (Claim: CLAIM-20260224-006)
- **Trust**: Calibrate urgency; explicitly prevent over-alarming escalation patterns. (Claim: CLAIM-20260224-008)
- **Channel**: Encourage clinician endorsement flows; provider encouragement increases portal use and may improve adoption. (Claim: CLAIM-20260224-013)

---

### Rule: No Uncited Assertions
Every bullet point and statement in this persona must cite at least one `CLAIM-*` identifier. No fictional storytelling or demographics-only profiles.
