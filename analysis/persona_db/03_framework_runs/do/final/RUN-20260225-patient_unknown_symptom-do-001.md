---
id: RUN-20260225-patient_unknown_symptom-do-001
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
  - CLAIM-20260225-016
  - CLAIM-20260225-020
  - CLAIM-20260225-024
  - CLAIM-20260225-025
  - CLAIM-20260225-028
raw_output:
intermediate_output:
final_output: inline
run_date: 2026-02-25
prompt_fingerprint: grounded-do-v1-20260225
---

# Framework Run (Final): DO - patient_unknown_symptom

## Purpose
Extend the canonical DO behavior map for patient_unknown_symptom personas with interview-derived empathy/journey behaviors.

## Final Output
Canonical DO behaviors to model in personas:

1. Diagnostic odyssey behaviors: repeated consultations, inconclusive tests, conflicting opinions, extended uncertainty. (Claim: CLAIM-20260224-001)
2. Uncertainty management via community: information-seeking and support-seeking in online groups. (Claim: CLAIM-20260224-002)
3. Symptom checker usage as first response to new/unfamiliar symptoms, often as a preparation step before formal care. (Claims: CLAIM-20260224-004, CLAIM-20260225-016)
4. Diverse follow-through after self-triage (self-treat, wait, seek care, or ignore guidance; some avoid clinician disclosure). (Claim: CLAIM-20260224-005)
5. Anxiety-driven reassurance loops can emerge (night-time checking, refreshing results until they feel safe). (Claims: CLAIM-20260225-024, CLAIM-20260225-025)
6. Access friction materially changes persistence and behavior (bureaucracy, delays, "normal" results, logistics). (Claim: CLAIM-20260224-009)
7. Legitimacy fatigue shifts behavior from searching to appointment preparation and clinician selection to avoid dismissal. (Claim: CLAIM-20260225-028)
8. In Italy, citizens consult health records and SSN services via FSE 2.0; diffusion/omogeneita/accessibilita and cross-region interoperability are explicit program goals. (Claims: CLAIM-20260225-011, CLAIM-20260225-012)
