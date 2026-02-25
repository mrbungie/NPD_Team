# Interview Method Tool (Pre-Gathering, Survey-Based)

This tool is mandatory before any interview evidence gathering or synthetic interview generation.

## Purpose

Standardize how interviews are designed, executed, and transformed into synthetic interview answers so outputs remain comparable, auditable, and evidence-grounded.

## When to Build the Instrument

Build (or update) the cohort instrument immediately before conducting interviews for that cohort.

Reason:
- You need enough context (cohort, decision to support, and known evidence gaps) to write sensible questions.
- You should not freeze an instrument at project start when you do not yet know what you must learn.

## Required Process

1. Lock one cohort (`insurer` or `patient_unknown_symptom`).
2. Select the decision you are trying to support and list the top 5 evidence gaps.
3. Choose (or revise) the cohort survey-interview instrument for this round.
3. Collect answers in mixed format:
- structured data answers (single-choice, multi-choice, rating scales, numeric values)
- free-text interview answers
4. If respondents are simulated from existing evidence, label outputs as `synthetic interview answers`.
5. Record `SOURCE-*` references for each answer.
6. Map answers to `CLAIM-*` references when the answer is explicitly grounded in an existing claim set (or after you extract new claims from the interview).

## Output Metadata (Mandatory)

- `tool_version`: `interview-method-tool-v2`
- `instrument_id`: one of the cohort instrument IDs below
- `cohort`: `insurer` or `patient_unknown_symptom`
- `response_mode`: `direct_interview` or `synthetic_interview`
- `respondent_profile`: profile object including person-level attributes
- `question_id`
- `question_type`: `single_choice` | `multi_choice` | `rating_scale` | `numeric` | `free_text`
- `claim_refs`
- `source_refs`

Respondent profile minimum fields:
- `age`
- `region` (Italian region)
- `role`
- `cohort_specific_context` (for example: condition duration for patients, organization type for insurer-side stakeholders)

## Cohort Instruments (Authoritative)

The instruments are recorded as standalone documents so they can be applied without pre-filling answers:

- `INS-PUS-v1` (patient_unknown_symptom): `analysis/persona_db/03_framework_runs/interviews/instruments/INS-PUS-v1.md`
- `INS-INSURER-v1` (insurer stakeholders): `analysis/persona_db/03_framework_runs/interviews/instruments/INS-INSURER-v1.md`

Each instrument includes:
- respondent profile fields (including age)
- structured questions with multiple options (including `other (specify)` and `prefer_not_to_say` where applicable)
- numeric questions (blank allowed if unknown)
- free-text interview questions

## Answer Recording Template

Use `analysis/persona_db/03_framework_runs/interviews/templates/interview_response_template.md` to record interview responses.

## Synthetic Interview Rules

- Keep interview voice explicit (first-person, decision-maker language, objections, trade-offs).
- Keep interview labeling explicit:
  - `Interview answer` for direct respondent data
  - `Synthetic interview answer` for evidence-generated response
- Do not invent numeric values unless they were captured in a real interview.
- For synthetic interviews, leave numeric fields blank unless the number is explicitly grounded in the evidence chain.
- Preserve existing interview content when migrating to this instrument.
- Keep context geography explicit: Italy (`SSN`, regional health systems, Italian/EU compliance context).

## Minimum Output Contract

For each interview run, include:
- Interview setup summary (objective, cohort, instrument_id, response mode)
- Full question-by-question responses with mixed answer types
- Traceability mapping from each response to `CLAIM-*` and `SOURCE-*`

## Versioning

- Current version: `interview-method-tool-v2`
- Any update requires a governance note in `analysis/persona_db/00_rules/`.
