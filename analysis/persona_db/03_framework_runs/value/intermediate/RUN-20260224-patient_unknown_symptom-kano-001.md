---
id: RUN-20260224-patient_unknown_symptom-kano-001
framework: kano
cohort: patient_unknown_symptom
inputs:
  - CLAIM-20260224-006
  - CLAIM-20260224-014
  - CLAIM-20260224-010
  - CLAIM-20260224-009
raw_output:
intermediate_output: inline
final_output:
run_date: 2026-02-24
prompt_fingerprint: grounded-kano-v1-20260224
---

# Framework Run (Intermediate): Kano - patient_unknown_symptom

## Purpose
Draft Kano categorization with explicit evidence links.

## Intermediate Output
Draft Kano:

Taken for granted (Basics):
- Non-alarming, trust-preserving guidance (avoid unnecessary escalation) (Claim: CLAIM-20260224-008)

Performance attributes:
- Better personalization and nuanced symptom input improves usefulness. (Claim: CLAIM-20260224-006)
- Practical navigation support for friction points (logistics, normal results, affordability) improves follow-through. (Claim: CLAIM-20260224-009)

Delighters:
- Clinician-ready outputs that help patients communicate and accelerate recognition/routing. (Claim: CLAIM-20260224-014)
- Legitimacy support language and artifacts that help patients feel believed. (Claim: CLAIM-20260224-010)
