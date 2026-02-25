---
id: PERSONA-patient_unknown_symptom-002-community-dependent-seeker
cohort: patient_unknown_symptom
role: User
status: Draft
version: 1.0.0
last_reviewed: 2026-02-24
derived_from_runs:
  - RUN-20260224-patient_unknown_symptom-do-001
  - RUN-20260224-patient_unknown_symptom-say-001
  - RUN-20260224-patient_unknown_symptom-kawakita-001
cluster_refs:
  - CLUSTER-patient_unknown_symptom-001-uncertainty-management
claim_refs:
  - CLAIM-20260224-001
  - CLAIM-20260224-002
  - CLAIM-20260224-003
  - CLAIM-20260224-009
  - CLAIM-20260224-010
  - CLAIM-20260224-014
  - CLAIM-20260225-011
  - CLAIM-20260225-012
---

# Persona: Community-Dependent Seeker

> "Is this happening to you?" (Claim: CLAIM-20260224-002)

## Primary Job-to-be-Done
Find credible explanations and next steps by comparing experiences, especially when formal care pathways feel slow or dismissive. (Claim: CLAIM-20260224-002)

## Context of Use
Operates inside long periods of uncertainty and access friction; relies on online communities as a continuous companion to care. (Claims: CLAIM-20260224-001, CLAIM-20260224-009)

## Top 3 Motivations and Pain Points (SAY/DO)
- **Motivation/Pain 1**: Seeks meaning in symptoms and diagnostic concerns; uses community language and themes to orient. (Claim: CLAIM-20260224-003)
- **Motivation/Pain 2**: Feels pressure to defend legitimacy and credibility in the face of stigma or dismissal. (Claim: CLAIM-20260224-010)
- **Motivation/Pain 3**: Struggles to keep a coherent story across episodes while the journey stretches over time and providers; wants records/services access via FSE 2.0 to be usable in practice. (Claims: CLAIM-20260224-001, CLAIM-20260225-011)

## Ranked Decision Criteria (SAY/VALUE)
1. **Validation**: Needs to be believed and to confirm symptoms are shared/real. (Claim: CLAIM-20260224-010)
2. **Continuity**: Wants one coherent story across episodes and systems (records, notes, context) that can be shared with clinicians. (Claims: CLAIM-20260224-014, CLAIM-20260225-011)
3. **Actionable next step**: Prefers clear options when access friction is high. (Claim: CLAIM-20260224-009)

## Barriers, Anxieties, and Triggers (DO)
- **Barriers**: Stigma, appointment logistics, and "normal" test results can stall progress. (Claim: CLAIM-20260224-009)
- **Anxieties**: Extended uncertainty and conflicting opinions create chronic doubt. (Claim: CLAIM-20260224-001)
- **Triggers**: Uncertainty with no "name" and repeated consultations motivates searching for peers. (Claim: CLAIM-20260224-001)

## Preferred Channels and Touchpoints (DO)
- Online communities: information-seeking and support-seeking to manage uncertainty. (Claim: CLAIM-20260224-002)
- FSE 2.0 / regional portals: access to SSN records and services. (Claim: CLAIM-20260225-011)

## Design Implications
- **Messaging**: Use legitimacy-preserving language; acknowledge stigma and "normal tests" without dismissing symptoms. (Claims: CLAIM-20260224-010, CLAIM-20260224-009)
- **Offer**: Help assemble a coherent, shareable narrative for clinicians (structured artifacts + analysis). (Claim: CLAIM-20260224-014)
- **UX/Service**: Make cross-Region interoperability constraints explicit; support workflows that work with FSE/EDS integration reality. (Claim: CLAIM-20260225-012)
- **Trust**: Make uncertainty explicit; do not overclaim certainty when evidence is limited. (Claim: CLAIM-20260224-001)
- **Channel**: Community-adjacent onboarding and peer-language support. (Claim: CLAIM-20260224-003)

---

### Rule: No Uncited Assertions
Every bullet point and statement in this persona must cite at least one `CLAIM-*` identifier. No fictional storytelling or demographics-only profiles.
