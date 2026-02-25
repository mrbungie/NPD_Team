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
intermediate_output:
final_output: inline
run_date: 2026-02-24
prompt_fingerprint: grounded-do-v1-20260224
---

# Framework Run (Final): DO - patient_unknown_symptom

## Purpose
Define the canonical DO behavior map for patient_unknown_symptom personas, grounded in claim evidence.

## Final Output
Canonical DO behaviors to model in personas:

1. Diagnostic odyssey behaviors: repeated consultations, inconclusive tests, conflicting opinions, extended uncertainty. (Claim: CLAIM-20260224-001)
2. Uncertainty management via community: information-seeking and support-seeking behaviors in online groups. (Claim: CLAIM-20260224-002)
3. Symptom checker usage as first response to new/unfamiliar symptoms. (Claim: CLAIM-20260224-004)
4. Diverse follow-through patterns after self-triage (self-treat, wait, seek care, or ignore guidance; some avoid clinician disclosure). (Claim: CLAIM-20260224-005)
5. Access friction materially changes behavior and persistence (stigma/logistics/"normal" results/affordability). (Claim: CLAIM-20260224-009)
6. In Italy, citizens can consult health records/data and SSN services via FSE 2.0; nationwide diffusion/omogeneita/accessibilita and cross-region interoperability are explicit program goals. (Claims: CLAIM-20260225-011, CLAIM-20260225-012)
7. Patients need clinician-ready outputs that support faster recognition and routing (structured artifacts + AI analysis). (Claim: CLAIM-20260224-014)
