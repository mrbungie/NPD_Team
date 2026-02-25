# Survey-Interview Instrument: Insurer and Health-System Stakeholders (INS-INSURER-v1)

This instrument is designed for a human stakeholder interview.

Format:
- Survey-interview hybrid (structured questions + free-text interview prompts)
- Designed for Italy (SSN and regional context)

If responses are generated from evidence rather than live respondents, label the output as `synthetic interview answers`.

## Interviewer Script (Short)

- Goal: understand adoption criteria, procurement workflow, and governance requirements.
- This is not a sales call; there are no right answers.
- You can skip any question.

## Respondent Profile (Required)

`INS-Q00` (profile)

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
  - procurement_manager
  - digital_health_program_lead
  - clinical_governance
  - compliance_privacy
  - operations_manager
  - finance_budget
  - it_data_platform
  - other (specify)
  - prefer_not_to_say
- organization_type (single_choice):
  - regional_health_authority
  - asl_ats
  - hospital_trust
  - private_insurer
  - other (specify)
  - prefer_not_to_say
- years_in_role (numeric, optional):

## Section A: Decision Context

1) `INS-Q01` (single_choice)
- Prompt: What is the primary evidence threshold for approving a pilot?
- Options:
  - clinical_outcomes
  - economic_outcomes
  - both_clinical_and_economic
  - member_engagement
  - operational_feasibility
  - other (specify)
  - prefer_not_to_say
- Answer:
- Other (if selected):

2) `INS-Q02` (free_text)
- Prompt: What problem are you trying to solve that a new solution would need to address?
- Answer:

## Section B: Evidence, ROI, and Validation

3) `INS-Q03` (rating_scale 1-5)
- Prompt: How confident are you in vendor-provided ROI models without independent validation?
- Scale: 1=no confidence, 5=high confidence
- Answer:

4) `INS-Q04` (multi_choice)
- Prompt: What types of proof do you trust most? (Choose up to 3.)
- Options:
  - peer_reviewed
  - real_world_evidence
  - pilot_results
  - health_economic_model
  - clinician_endorsement
  - other (specify)
  - prefer_not_to_say
- Answer(s):
- Other (if selected):

5) `INS-Q05` (free_text)
- Prompt: In your own words, what makes a solution untrustworthy at evaluation time?
- Answer:

6) `INS-Q06` (free_text)
- Prompt: Write one sentence you would use internally to explain the current ROI reality.
- Answer:

## Section C: Procurement Workflow

7) `INS-Q07` (multi_choice)
- Prompt: Who must be involved for a pilot decision? (Choose all that apply.)
- Options:
  - procurement
  - clinical_governance
  - privacy_legal
  - it_security
  - operations
  - finance
  - leadership
  - other (specify)
  - prefer_not_to_say
- Answer(s):

8) `INS-Q08` (numeric)
- Prompt: Typical procurement or review cycle length for digital solutions.
- Unit: months
- Answer (number or blank if unknown):

9) `INS-Q09` (free_text)
- Prompt: What steps typically slow things down or cause a proposal to stall?
- Answer:

## Section D: Integration, Data, and Risk

10) `INS-Q10` (multi_choice)
- Prompt: Which risks most often block adoption? (Choose up to 3.)
- Options:
  - workflow_disruption
  - compliance_risk
  - fragmentation
  - training_burden
  - data_quality
  - procurement_timing
  - vendor_lock_in
  - other (specify)
  - prefer_not_to_say
- Answer(s):
- Other (if selected):

11) `INS-Q11` (rating_scale 0-10)
- Prompt: How feasible is integration with your current systems for a new tool?
- Scale: 0=not feasible, 10=very feasible
- Answer:

12) `INS-Q12` (free_text)
- Prompt: What are the non-negotiable privacy/security requirements in your context?
- Answer:

## Section E: Pilot and Contracting

13) `INS-Q13` (numeric)
- Prompt: Typical pilot duration.
- Unit: months
- Answer (number or blank if unknown):

14) `INS-Q14` (multi_choice)
- Prompt: What contracting model is most acceptable? (Choose up to 2.)
- Options:
  - fixed_fee
  - usage_based
  - outcomes_based
  - mixed
  - other (specify)
  - prefer_not_to_say
- Answer(s):

15) `INS-Q15` (free_text)
- Prompt: What success metrics would you use to decide whether to expand after a pilot?
- Answer:

## Traceability (Required)

For each answer, record:
- claim_refs: (list)
- source_refs: (list)

## Notes

- Keep responses explicitly labeled as interview answers.
- Numeric questions can be left blank.
- Do not invent numeric values unless grounded in the evidence chain.
