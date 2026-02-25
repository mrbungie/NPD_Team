---
id: RUN-20260224-patient_unknown_symptom-do-001
framework: do
cohort: patient_unknown_symptom
inputs:
  - CLAIM-20260224-001
  - CLAIM-20260224-002
  - CLAIM-20260224-004
  - CLAIM-20260224-005
  - CLAIM-20260224-009
  - CLAIM-20260225-011
  - CLAIM-20260225-012
  - CLAIM-20260224-014
  - CLAIM-20260224-015
raw_output: inline
intermediate_output:
final_output:
run_date: 2026-02-24
prompt_fingerprint: grounded-do-v1-20260224
---

# Framework Run (Raw): DO - patient_unknown_symptom

## Purpose
Collect grounded behavioral fragments (DO) for the patient_unknown_symptom cohort before any clustering/synthesis.

## Inputs
Claims listed in frontmatter.

## Raw Output
Observed behavioral fragments supported by the input claims:

1. Repeated consultations and investigations over time; contradictory opinions; ongoing uncertainty about "what this is". (Claim: CLAIM-20260224-001)
2. Online uncertainty management: patients seek information and peer validation in online communities. (Claim: CLAIM-20260224-002)
3. Symptom checker usage is triggered by new/unfamiliar symptom onset. (Claim: CLAIM-20260224-004)
4. After symptom checker use: behaviors branch into self-treatment, waiting, scheduling care, seeking more info, or ignoring app guidance; some avoid discussing app use with clinicians. (Claim: CLAIM-20260224-005)
5. Access barriers shape actions: stigma, appointment logistics, "normal" test results, affordability pressures. (Claim: CLAIM-20260224-009)
6. In Italy, citizens can consult health records/data and SSN services via FSE 2.0, with nationwide diffusion/omogeneita/accessibilita and cross-region interoperability as explicit program goals. (Claims: CLAIM-20260225-011, CLAIM-20260225-012)
7. Clinical acceleration artifacts exist: clinician-ready fact sheets + AI analysis are proposed to combat diagnostic delays. (Claim: CLAIM-20260224-014)
