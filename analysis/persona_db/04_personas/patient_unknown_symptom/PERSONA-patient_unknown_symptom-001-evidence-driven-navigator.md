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
  - RUN-20260225-patient_unknown_symptom-do-001
  - RUN-20260225-patient_unknown_symptom-say-001
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
  - CLAIM-20260225-011
  - CLAIM-20260225-012
  - CLAIM-20260225-016
  - CLAIM-20260225-017
  - CLAIM-20260225-018
  - CLAIM-20260225-019
  - CLAIM-20260224-014
---

# Persona: Evidence-Driven Navigator

> "This is happening to me." (Claim: CLAIM-20260224-002)

## Primary Job-to-be-Done
Reduce uncertainty from new symptoms and move toward the right care path without wasting time or credibility. (Claim: CLAIM-20260224-004)

## Context of Use
Often starts when new/unfamiliar symptoms appear; uses symptom checker apps and online sources before deciding on next steps. (Claims: CLAIM-20260224-004, CLAIM-20260224-005)

## DO/SAY/WANT Snapshot
- **DO**: Builds a structured symptom summary for the MMG, then triangulates with peer stories for pattern clues and next tests. (Claims: CLAIM-20260225-016, CLAIM-20260224-002)
- **SAY**: Worries about being dismissed and rehearses how to sound credible. (Claim: CLAIM-20260225-018)
- **WANT**: A reusable one-page story plus a clear next-step fork that fits SSN constraints and preserves momentum after "normal" tests. (Claims: CLAIM-20260225-017, CLAIM-20260225-019)

## Empathy Map Signals
- **Think**: "If I don't present it perfectly, I'll be dismissed again." (Claim: CLAIM-20260225-018)
- **Feel**: Relief when there is a plan; shame/anger when minimized. (Claim: CLAIM-20260225-018)
- **Say**: Asks for pattern-taking and a plan rather than restarting from zero. (Claim: CLAIM-20260225-019)
- **Do**: Prepares artifacts (timeline, triggers, visit checklist) to compress the story into a short visit. (Claim: CLAIM-20260225-017)

## Journey Map Notes
- **Breakdown**: Momentum drops after "normal" tests or ambiguous MMG-to-specialist handoffs with no owner. (Claim: CLAIM-20260225-019)
- **30% easier**: Provide explicit decision forks and a reusable summary so the next visit starts at "page 2". (Claims: CLAIM-20260225-017, CLAIM-20260225-019)

## Representative Interview Excerpts (Variants)
- **Variant A**: "I need you to take the pattern seriously and help me choose the next test, not restart the story from zero." (Claim: CLAIM-20260225-019)
- **Variant B**: "A checklist for what to bring and what to ask, plus a reusable summary so the clinician starts at page 2, not page 1." (Claim: CLAIM-20260225-017)

## Top 3 Motivations and Pain Points (SAY/DO)
- **Motivation/Pain 1**: Wants to validate whether symptoms are shared by others and get pattern clues from peers. (Claim: CLAIM-20260224-002)
- **Motivation/Pain 2**: Gets frustrated by access friction (stigma/logistics/"normal" results/affordability) that slows progress. (Claim: CLAIM-20260224-009)
- **Motivation/Pain 3**: Feels undermined when guidance escalates too aggressively or increases anxiety. (Claim: CLAIM-20260224-008)

## Ranked Decision Criteria (SAY/VALUE)
1. **Non-alarming guidance**: Must reduce uncertainty without triggering unnecessary escalation and anxiety. (Claim: CLAIM-20260224-008)
2. **Personalization**: Tools must reflect context and allow nuanced symptom description to be useful. (Claim: CLAIM-20260224-006)
3. **Clinician-ready output**: Wants a reusable one-page story and visit scaffolding that accelerates recognition/routing and preserves momentum through handoffs. (Claims: CLAIM-20260224-014, CLAIM-20260225-017, CLAIM-20260225-019)

## Barriers, Anxieties, and Triggers (DO)
- **Barriers/Context**: In Italy, records/SSN services access is structured around FSE 2.0 and cross-region interoperability is an explicit program goal. (Claims: CLAIM-20260225-011, CLAIM-20260225-012)
- **Anxieties**: Risk-averse triage and serious suggestions can unsettle. (Claim: CLAIM-20260224-008)
- **Triggers**: New and unfamiliar symptoms prompt immediate self-triage behavior. (Claim: CLAIM-20260224-004)

## Preferred Channels and Touchpoints (DO)
- Symptom checker apps: used when symptoms first occur to determine next action. (Claim: CLAIM-20260224-004)
- Online communities: used for information-seeking and support-seeking. (Claim: CLAIM-20260224-002)
- FSE 2.0 / regional portals: used to access SSN records and services. (Claim: CLAIM-20260225-011)

## Design Implications
- **Messaging**: Validate legitimacy and "being believed" needs; avoid implying symptoms are imagined. (Claim: CLAIM-20260224-010)
- **Offer**: Provide structured outputs clinicians can use (one-page summary + next-step forks) to reduce diagnostic delays and retelling. (Claims: CLAIM-20260224-014, CLAIM-20260225-017, CLAIM-20260225-019)
- **UX/Service**: Support nuanced symptom capture and personalization. (Claim: CLAIM-20260224-006)
- **Trust**: Calibrate urgency; explicitly prevent over-alarming escalation patterns. (Claim: CLAIM-20260224-008)

---

### Rule: No Uncited Assertions
Every bullet point and statement in this persona must cite at least one `CLAIM-*` identifier. No fictional storytelling or demographics-only profiles.
