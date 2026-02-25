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
  - CLAIM-20260224-011
  - CLAIM-20260224-012
  - CLAIM-20260224-013
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
5. Documentation loop: patient portal/app access is used to review or retrieve records, but fragmentation across portals is common and consolidation behavior is rare. (Claims: CLAIM-20260224-011, CLAIM-20260224-012)
6. Clinician handoff: patients benefit when information is structured for clinicians (e.g., fact sheets/AI analysis framing). (Claim: CLAIM-20260224-014)
7. Adoption lever: clinician encouragement increases portal use and could plausibly influence app adoption in adjacent workflows. (Claim: CLAIM-20260224-013)
