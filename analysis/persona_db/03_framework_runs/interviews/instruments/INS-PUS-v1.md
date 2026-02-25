# Survey-Interview Instrument: Patient Unknown Symptom (INS-PUS-v1)

This instrument is designed for a human interviewee.

Format:
- Survey-interview hybrid (structured questions + free-text interview prompts)
- Designed for Italy (SSN and regional context)

If responses are generated from evidence rather than live respondents, label the output as `synthetic interview answers`.

## Interviewer Script (Short)

- Goal: understand your experience navigating unclear or persistent symptoms and what would help.
- This is not medical advice.
- You can skip any question.

## Respondent Profile (Required)

`PUS-Q00` (profile)

- age (numeric, optional):
- region (single_choice, Italy):
  - Abruzzo
  - Basilicata
  - Calabria
  - Campania
  - Emilia-Romagna
  - Friuli-Venezia Giulia
  - Lazio
  - Liguria
  - Lombardia
  - Marche
  - Molise
  - Piemonte
  - Puglia
  - Sardegna
  - Sicilia
  - Toscana
  - Trentino-Alto Adige
  - Umbria
  - Valle d'Aosta
  - Veneto
- role (single_choice):
  - patient
  - caregiver
  - other (specify)
  - prefer_not_to_say
- condition_duration_months (numeric, optional):
- ssn_or_private_mix (single_choice):
  - ssn_only
  - mostly_ssn
  - mixed
  - mostly_private
  - private_only
  - prefer_not_to_say

## Section A: Trigger and First 48 Hours

1) `PUS-Q01` (multi_choice)
- Prompt: When a new or unclear symptom appears, which of these do you typically use in the first 48 hours? (Choose all that apply.)
- Options:
  - search_engine
  - symptom_checker
  - online_community
  - pharmacy
  - primary_care_mmg
  - guardia_medica
  - pronto_soccorso
  - specialist
  - friends_family
  - other (specify)
  - prefer_not_to_say
- Answer(s):
- Other (if selected):

2) `PUS-Q02` (rating_scale 0-10)
- Prompt: If you used an online symptom checker or algorithmic symptom guidance, how worried did it make you feel?
- Scale: 0=not worried, 10=extremely worried
- Answer (number or blank if not applicable):

3) `PUS-Q03` (free_text)
- Prompt: Walk me through the last time this happened. Start from when you noticed the symptom.
- Answer:

## Section B: Care-Seeking and System Friction (Italy)

4) `PUS-Q04` (multi_choice)
- Prompt: In the last 6 months, which of these did you use to access care? (Choose all that apply.)
- Options:
  - mmg_primary_care
  - specialist_visit_ssn
  - specialist_visit_private
  - pronto_soccorso
  - teleconsult
  - diagnostic_tests
  - other (specify)
  - prefer_not_to_say
- Answer(s):
- Other (if selected):

5) `PUS-Q05` (multi_choice)
- Prompt: Which barriers are most present in your journey? (Choose up to 3.)
- Options:
  - not_being_believed
  - repeat_story
  - access_delay
  - cost
  - unclear_next_step
  - bureaucracy_admin
  - travel_distance
  - conflicting_opinions
  - other (specify)
  - prefer_not_to_say
- Answer(s):
- Other (if selected):

6) `PUS-Q06` (numeric)
- Prompt: In the last 6 months, how many different clinicians did you have to repeat your story to?
- Unit: count
- Answer (number or blank if unknown):

7) `PUS-Q07` (numeric)
- Prompt: Roughly how many days did it take to get your most recent specialist appointment?
- Unit: days
- Answer (number or blank if unknown / not applicable):

## Section C: Information, Trust, and Communication

8) `PUS-Q08` (multi_choice)
- Prompt: Where do you trust information the most when you're uncertain? (Choose up to 3.)
- Options:
  - mmg_primary_care
  - specialist
  - official_health_sites
  - patient_associations
  - online_community
  - friends_family
  - other (specify)
  - prefer_not_to_say
- Answer(s):
- Other (if selected):

9) `PUS-Q09` (rating_scale 0-10)
- Prompt: How comfortable are you sharing a structured symptom summary with a clinician?
- Scale: 0=not comfortable, 10=very comfortable
- Answer:

10) `PUS-Q10` (free_text)
- Prompt: What makes you feel believed or not believed?
- Answer:

11) `PUS-Q11` (free_text)
- Prompt: If you had to tell a clinician one sentence that captures your experience, what would you say?
- Answer:

## Section D: Outcomes and Requirements

12) `PUS-Q12` (multi_choice)
- Prompt: Which outcomes matter most to you right now? (Choose up to 3.)
- Options:
  - reassurance_and_clarity
  - faster_access_to_right_care
  - fewer_repeat_explanations
  - better_symptom_tracking
  - better_test_interpretation
  - legitimacy_support
  - other (specify)
  - prefer_not_to_say
- Answer(s):
- Other (if selected):

13) `PUS-Q13` (multi_choice)
- Prompt: What would make a tool unacceptable for you? (Choose all that apply.)
- Options:
  - too_alarmist
  - too_generic
  - privacy_concerns
  - hard_to_use
  - asks_too_much_time
  - adds_more_steps
  - other (specify)
  - prefer_not_to_say
- Answer(s):
- Other (if selected):

14) `PUS-Q14` (free_text)
- Prompt: In your own words, what do you need most right now to move forward?
- Answer:

## Section E: Empathy Map (Product Development)

15) `PUS-Q15` (free_text)
- Prompt: When you're in the middle of this situation, what are you thinking that you don't always say out loud?
- Answer:

16) `PUS-Q16` (free_text)
- Prompt: What feelings show up most often (before, during, and after appointments)?
- Answer:

17) `PUS-Q17` (multi_choice)
- Prompt: Which of these "jobs" are you trying to get done? (Choose up to 3.)
- Options:
  - decide_if_urgent
  - get_taken_seriously
  - get_to_right_specialist
  - reduce_repeat_story
  - interpret_tests
  - manage_anxiety
  - coordinate_appointments
  - other (specify)
  - prefer_not_to_say
- Answer(s):
- Other (if selected):

## Section F: Customer Journey Map (Product Development)

18) `PUS-Q18` (multi_choice)
- Prompt: Which stages show up in your journey? (Choose all that apply.)
- Options:
  - symptom_onset
  - self_triage
  - online_search
  - community_sensemaking
  - pharmacy
  - mmg_visit
  - specialist_visit
  - diagnostics
  - follow_up
  - admin_and_booking
  - work_family_impact
  - other (specify)
  - prefer_not_to_say
- Answer(s):
- Other (if selected):

19) `PUS-Q19` (free_text)
- Prompt: Where does the journey most often break down (the moment you lose momentum)? Describe one concrete example.
- Answer:

20) `PUS-Q20` (free_text)
- Prompt: What would have made that breakdown moment 30% easier?
- Answer:

## Traceability (Required)

For each answer, record:
- claim_refs: (list)
- source_refs: (list)

## Notes

- Keep responses explicitly labeled as interview answers.
- Numeric questions can be left blank.
- Do not invent numeric values unless grounded in the evidence chain.
