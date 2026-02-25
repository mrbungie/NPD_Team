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
raw_output:
intermediate_output: inline
final_output:
run_date: 2026-02-24
prompt_fingerprint: grounded-do-v1-20260224
---

# Framework Run (Intermediate): DO - patient_unknown_symptom

## Purpose
Transform raw DO fragments into a draft journey skeleton with decision points.

## Intermediate Output
Draft behavioral journey (not a value judgement):

1. Trigger: new/unfamiliar symptom(s) appear. (Claim: CLAIM-20260224-004)
2. First-line uncertainty management: symptom checker use and/or online community search for similarity/validation. (Claims: CLAIM-20260224-002, CLAIM-20260224-005)
3. Response branching:
   - Wait-and-see + self-treatment.
   - Internet research and further checking.
   - Contact health system (schedule or urgent care).
   - Non-disclosure to clinician about app use.
   (Claim: CLAIM-20260224-005)
4. System friction: stigma + logistics + "normal" results + affordability change follow-through and persistence. (Claim: CLAIM-20260224-009)
5. Documentation loop: in Italy, citizens can consult health records/data and SSN services via FSE 2.0; the program explicitly targets nationwide diffusion/omogeneita/accessibilita and cross-region interoperability. (Claims: CLAIM-20260225-011, CLAIM-20260225-012)
6. Clinician handoff: patients benefit when information is structured for clinicians (e.g., fact sheets/AI analysis framing). (Claim: CLAIM-20260224-014)
