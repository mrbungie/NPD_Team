---
id: RUN-20260224-patient_unknown_symptom-say-001
framework: say
cohort: patient_unknown_symptom
inputs:
  - CLAIM-20260224-003
  - CLAIM-20260224-008
  - CLAIM-20260224-010
raw_output:
intermediate_output:
final_output: inline
run_date: 2026-02-24
prompt_fingerprint: grounded-say-v1-20260224
tool_version: interview-method-tool-v2
instrument_id: INS-PUS-v1
response_mode: synthetic_interview
---

# Framework Run (Final): SAY - patient_unknown_symptom

## Purpose
Define canonical SAY themes to embed in patient_unknown_symptom personas.

## Instrument Consistency
- Canonical themes are finalized from `INS-PUS-v1` survey-interview responses.
- Interview phrasing is preserved from synthetic interview answers.

## Final Output
Canonical SAY themes:

1. Peer similarity seeking: language framed as "is this happening to you?" and "this is happening to me". (Claim: CLAIM-20260224-003)
2. Anxiety amplification risk: users report being alarmed by triage and serious suggestions. (Claim: CLAIM-20260224-008)
3. Legitimacy and credibility: patients emphasize that symptoms are real; they are not lying; stigma is present. (Claim: CLAIM-20260224-010)
