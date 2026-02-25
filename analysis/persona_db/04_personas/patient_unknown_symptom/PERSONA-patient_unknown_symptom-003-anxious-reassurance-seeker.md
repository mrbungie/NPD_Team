---
id: PERSONA-patient_unknown_symptom-003-anxious-reassurance-seeker
cohort: patient_unknown_symptom
role: User
status: Draft
version: 1.0.0
last_reviewed: 2026-02-24
derived_from_runs:
  - RUN-20260224-patient_unknown_symptom-do-001
  - RUN-20260224-patient_unknown_symptom-say-001
  - RUN-20260224-patient_unknown_symptom-kano-001
  - RUN-20260225-patient_unknown_symptom-do-001
  - RUN-20260225-patient_unknown_symptom-say-001
cluster_refs:
  - CLUSTER-patient_unknown_symptom-001-uncertainty-management
claim_refs:
  - CLAIM-20260224-004
  - CLAIM-20260224-005
  - CLAIM-20260224-006
  - CLAIM-20260224-007
  - CLAIM-20260224-008
  - CLAIM-20260225-024
  - CLAIM-20260225-025
  - CLAIM-20260225-026
  - CLAIM-20260225-027
---

# Persona: Anxious Reassurance Seeker

> "I need to know if this is serious." (Claim: CLAIM-20260224-008)

## Primary Job-to-be-Done
Get reassurance and a calibrated plan when new symptoms appear, without being overwhelmed by worst-case outputs. (Claim: CLAIM-20260224-004)

## Context of Use
Symptom checker use spikes with new/unfamiliar symptoms; reactions vary widely and can include worry and over-escalation. (Claims: CLAIM-20260224-004, CLAIM-20260224-005)

## DO/SAY/WANT Snapshot
- **DO**: Falls into reassurance loops (night-time checking, refreshing results) when anxious. (Claims: CLAIM-20260225-024, CLAIM-20260225-025)
- **SAY**: Asks for calm next steps and for clinicians/tools to acknowledge fear without impatience. (Claims: CLAIM-20260225-025, CLAIM-20260225-026)
- **WANT**: A graduated plan with safety nets (what would change the plan) that avoids panic-driven escalation and reduces "empty space" after visits. (Claims: CLAIM-20260225-026, CLAIM-20260225-027)

## Empathy Map Signals
- **Think**: Worst-case thinking at night can dominate and disrupt functioning. (Claim: CLAIM-20260225-024)
- **Feel**: Panic when there is no plan; temporary relief when a concrete plan exists. (Claim: CLAIM-20260225-027)
- **Say**: Wants reassurance paired with a clear sign that would change the plan. (Claim: CLAIM-20260225-026)
- **Do**: Searches/checks repeatedly until a "safe" interpretation appears. (Claim: CLAIM-20260225-025)

## Journey Map Notes
- **Breakdown**: The night-time loop and the post-visit no-plan moment are the highest-risk drop-offs. (Claims: CLAIM-20260225-024, CLAIM-20260225-027)
- **30% easier**: Calm language, conditional escalation, and "call your MMG tomorrow" scripts reduce panic while keeping safety. (Claim: CLAIM-20260225-026)

## Representative Interview Excerpts (Variants)
- **Variant A**: "Breakdown is the night-time loop. I google, I check, I panic..." (Claim: CLAIM-20260225-024)
- **Variant B**: "A 'call your MMG tomorrow' option, plus a script for what to say, plus calming language." (Claim: CLAIM-20260225-026)

## Top 3 Motivations and Pain Points (SAY/DO)
- **Motivation/Pain 1**: Uses self-triage tools frequently; health anxiety is a predictor of use. (Claim: CLAIM-20260224-007)
- **Motivation/Pain 2**: Feels more anxious when outputs are risk-averse and alarmist, and can fall into night-time panic loops and reassurance checking. (Claims: CLAIM-20260224-008, CLAIM-20260225-024, CLAIM-20260225-025)
- **Motivation/Pain 3**: Finds symptom checker tools insufficiently personalized and hard to describe nuance. (Claim: CLAIM-20260224-006)

## Ranked Decision Criteria (SAY/VALUE)
1. **Calibrated reassurance**: Calm guidance with safety nets (what would change the plan), avoiding unnecessary escalation that increases anxiety. (Claims: CLAIM-20260225-026, CLAIM-20260224-008)
2. **Personalization**: Context-aware symptom capture improves usefulness. (Claim: CLAIM-20260224-006)
3. **Clear follow-through options**: Must support safe next steps (self-treat/wait/seek care) with conditional escalation and MMG scripting. (Claims: CLAIM-20260224-005, CLAIM-20260225-026)

## Barriers, Anxieties, and Triggers (DO)
- **Barriers**: Low trust in outputs when they feel unrealistic or exaggerated. (Claim: CLAIM-20260224-005)
- **Anxieties**: Health anxiety can be amplified by self-triage outputs. (Claim: CLAIM-20260224-008)
- **Triggers**: New and unfamiliar symptoms prompt immediate self-checking. (Claim: CLAIM-20260224-004)

## Preferred Channels and Touchpoints (DO)
- Symptom checker apps: used for self-triage and validation of assumptions. (Claims: CLAIM-20260224-004, CLAIM-20260224-005)

## Design Implications
- **Messaging**: Normalize uncertainty and avoid language that escalates anxiety. (Claim: CLAIM-20260224-008)
- **Offer**: Provide personalization and nuanced symptom description. (Claim: CLAIM-20260224-006)
- **UX/Service**: Present next steps as graduated choices with safety cues. (Claim: CLAIM-20260224-005)
- **Trust**: Provide transparency about limitations and avoid overconfidence. (Claim: CLAIM-20260224-005)
- **Channel**: Trigger-based prompts on first symptom occurrence. (Claim: CLAIM-20260224-004)

---

### Rule: No Uncited Assertions
Every bullet point and statement in this persona must cite at least one `CLAIM-*` identifier. No fictional storytelling or demographics-only profiles.
