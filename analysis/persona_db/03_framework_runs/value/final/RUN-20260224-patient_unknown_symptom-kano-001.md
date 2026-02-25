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
intermediate_output:
final_output: inline
run_date: 2026-02-24
prompt_fingerprint: grounded-kano-v1-20260224
---

# Framework Run (Final): Kano - patient_unknown_symptom

## Purpose
Provide a grounded Kano classification to drive feature prioritization for the patient cohort.

## Final Output
Taken for granted (Basics)
- Guidance that does not unnecessarily alarm users and preserves trust during uncertainty. (Claim: CLAIM-20260224-008)

Competitive (Performance)
- Higher-quality personalization and nuanced symptom capture. (Claim: CLAIM-20260224-006)
- Navigation support for access friction (logistics, "normal" results, affordability constraints). (Claim: CLAIM-20260224-009)

Surprises and Delighters
- Outputs that clinicians can use (structured artifacts) to accelerate diagnosis and reduce "odyssey" time. (Claim: CLAIM-20260224-014)
- Explicit legitimacy support (language/structure acknowledging stigma and "being believed" needs). (Claim: CLAIM-20260224-010)
