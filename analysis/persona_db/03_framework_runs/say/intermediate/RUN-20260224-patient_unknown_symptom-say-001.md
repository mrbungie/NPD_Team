---
id: RUN-20260224-patient_unknown_symptom-say-001
framework: say
cohort: patient_unknown_symptom
inputs:
  - CLAIM-20260224-003
  - CLAIM-20260224-008
  - CLAIM-20260224-010
raw_output:
intermediate_output: inline
final_output:
run_date: 2026-02-24
prompt_fingerprint: grounded-say-v1-20260224
tool_version: interview-method-tool-v2
instrument_id: INS-PUS-v1
response_mode: synthetic_interview
---

# Framework Run (Intermediate): SAY - patient_unknown_symptom

## Purpose
Group SAY fragments into initial themes for clustering.

## Instrument Consistency
- Themes are grouped from responses collected via `INS-PUS-v1`.
- Profile fields used in grouping: age, region, role.

## Intermediate Output
Draft SAY themes:

Theme A: "Am I the only one?" (peer similarity seeking)
- Users ask whether others experience similar symptoms; seek validation and patterns. (Claim: CLAIM-20260224-003)

Theme B: "Don't panic me" (risk-averse triage anxiety)
- Users describe alarming recommendations and worry about over-escalation. (Claim: CLAIM-20260224-008)

Theme C: "Believe me" (legitimacy / stigma / dismissal)
- Patients emphasize legitimacy and being taken seriously. (Claim: CLAIM-20260224-010)
