---
id: RUN-20260224-patient_unknown_symptom-say-001
framework: say
cohort: patient_unknown_symptom
inputs:
  - CLAIM-20260224-003
  - CLAIM-20260224-008
  - CLAIM-20260224-010
raw_output: inline
intermediate_output:
final_output:
run_date: 2026-02-24
prompt_fingerprint: grounded-say-v1-20260224
tool_version: interview-method-tool-v2
instrument_id: INS-PUS-v1
response_mode: synthetic_interview
---

# Framework Run (Raw): SAY - patient_unknown_symptom

## Purpose
Collect grounded language themes and phrasing patterns (SAY) for patient_unknown_symptom.

## Interview Instrument Application
- This run applies the survey-based interview instrument `INS-PUS-v1`.
- Answers are synthetic interview answers generated from evidence-backed claims.

## Respondent Profiles
1. `R-PUS-01`: age 31, region Emilia-Romagna, role Patient, condition_duration_months 14
2. `R-PUS-02`: age 44, region Campania, role Patient, condition_duration_months 26

## Raw Output
Question-by-question synthetic interview answers (subset of instrument):

1. `PUS-Q01` (multi_choice)
- Answer(s): `online_community`
- Claim refs: `CLAIM-20260224-003`
- Source refs: `SOURCE-20260224-002`

2. `PUS-Q02` (rating_scale 0-10)
- Answer: (not captured in this interview)
- Claim refs: `CLAIM-20260224-008`
- Source refs: `SOURCE-20260224-003`

3. `PUS-Q05` (multi_choice)
- Answer(s): `not_being_believed`, `repeat_story`, `access_delay`
- Claim refs: `CLAIM-20260224-010`
- Source refs: `SOURCE-20260224-005`

4. `PUS-Q11` (free_text)
- Synthetic interview answer: "None of us are lying"
- Claim refs: `CLAIM-20260224-010`
- Source refs: `SOURCE-20260224-005`

5. `PUS-Q14` (free_text)
- Synthetic interview answer: "This is happening to me" / "Is this happening to you?"
- Claim refs: `CLAIM-20260224-003`
- Source refs: `SOURCE-20260224-002`

Preserved interview content phrases:
- Health anxiety framing: symptom checker outputs can be alarming/over-triaged; users can feel anxious or unsettled. (Claim: `CLAIM-20260224-008`)
