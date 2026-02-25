---
id: RUN-20260224-patient_unknown_symptom-kano-001
framework: kano
cohort: patient_unknown_symptom
inputs:
  - CLAIM-20260224-006
  - CLAIM-20260224-014
  - CLAIM-20260224-010
  - CLAIM-20260224-009
raw_output: inline
intermediate_output:
final_output:
run_date: 2026-02-24
prompt_fingerprint: grounded-kano-v1-20260224
---

# Framework Run (Raw): Kano - patient_unknown_symptom

## Purpose
List candidate product attributes implied by evidence and prepare for Kano classification.

## Raw Output
Candidate attributes inferred from VALUE/SAY/DO evidence:

1. Personalization (preexisting conditions, context) and nuanced symptom input. (Claim: CLAIM-20260224-006)
2. Outputs that are usable in clinical conversations (structured, clinician-ready artifacts). (Claim: CLAIM-20260224-014)
3. Language/UX that supports legitimacy and reduces stigma burden ("being believed" support). (Claim: CLAIM-20260224-010)
4. Practical support for navigating appointment logistics, "normal" results, and affordability constraints. (Claim: CLAIM-20260224-009)
