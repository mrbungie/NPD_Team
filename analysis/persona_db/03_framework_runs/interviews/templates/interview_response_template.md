---
tool_version: interview-method-tool-v2
instrument_id:
cohort:
response_mode: direct_interview | synthetic_interview
captured_on: YYYY-MM-DD
respondent_profile:
  age:
  region:
  role:
  cohort_specific_context:
---

# Interview Responses: [Cohort] ([instrument_id])

This document is an interview record.

## Instructions

- Answer questions in order using the instrument IDs.
- For structured questions, record the selected option(s) or numeric value.
- For free-text questions, record the interview answer verbatim (or synthetic interview answer if evidence-generated).
- For every answer, list `source_refs`.
- If the answer was generated from (or mapped to) explicit claims, also list `claim_refs`.

## Responses

### Q: [PROFILE_QUESTION_ID]  (PUS-Q00 or INS-Q00)
- question_type: profile
- answer: age: ...; region: ...; role: ...; cohort_specific_context: ...
- source_refs:
  - SOURCE-...

### Q: [QUESTION_ID]

- question_type:
- answer: (use explicit tokens like `not_captured` or `prefer_not_to_say` instead of leaving blank)
- other (if applicable):
- claim_refs: (optional)
  - CLAIM-...
- source_refs:
  - SOURCE-...

(Repeat per question.)
