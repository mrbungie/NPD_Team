---
id: RUN-20260225-patient_unknown_symptom-say-001
framework: say
cohort: patient_unknown_symptom
inputs:
  - CLAIM-20260224-003
  - CLAIM-20260224-008
  - CLAIM-20260224-010
  - CLAIM-20260225-017
  - CLAIM-20260225-018
  - CLAIM-20260225-019
  - CLAIM-20260225-021
  - CLAIM-20260225-022
  - CLAIM-20260225-023
  - CLAIM-20260225-026
  - CLAIM-20260225-027
  - CLAIM-20260225-029
  - CLAIM-20260225-030
  - CLAIM-20260225-031
raw_output:
intermediate_output:
final_output: inline
run_date: 2026-02-25
prompt_fingerprint: grounded-say-v1-20260225
tool_version: interview-method-tool-v2
instrument_id: INS-PUS-v1
response_mode: synthetic_interview
---

# Framework Run (Final): SAY - patient_unknown_symptom

## Purpose
Extend canonical SAY themes for patient_unknown_symptom personas with product-development interview signals (do/say/want, empathy, and breakdown moments).

## Instrument Consistency
- Canonical themes are finalized from `INS-PUS-v1` survey-interview responses.
- Interview phrasing is preserved from synthetic interview answers.

## Final Output
Canonical SAY themes:

1. Peer similarity seeking: language framed as "is this happening to you?" and "this is happening to me" to validate reality. (Claim: CLAIM-20260224-003)
2. Legitimacy plea: patients emphasize they are not lying and want next steps without being treated as dramatic. (Claims: CLAIM-20260224-010, CLAIM-20260225-021)
3. Anxiety amplification risk: alarmist or worst-case outputs (especially at night) can trigger spirals and loss of functioning. (Claims: CLAIM-20260224-008, CLAIM-20260225-024)
4. Credibility performance: patients rehearse/perform credibility and feel shame/anger when minimized or when "normal tests" are used as dismissal cues. (Claims: CLAIM-20260225-018, CLAIM-20260225-029, CLAIM-20260225-030)
5. Clinician-ready transfer: patients want a reusable one-page story plus appointment prep scaffolding to avoid improvising under stress. (Claims: CLAIM-20260225-017, CLAIM-20260225-022)
6. Plan-as-relief: clear, calm next steps with safety nets reduce panic; lack of a plan creates "empty space" filled with anxiety. (Claims: CLAIM-20260225-026, CLAIM-20260225-027)
7. Ownership and continuity: momentum breaks when no one owns the next step; patients want an escalation path that does not require starting from zero. (Claims: CLAIM-20260225-019, CLAIM-20260225-031)
