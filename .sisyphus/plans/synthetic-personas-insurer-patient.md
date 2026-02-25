# Synthetic Persona System: Payer Insurers + Unknown-Symptom Patients

## TL;DR
> **Summary**: Build a markdown-native, evidence-traceable persona database and generate synthetic personas for payer insurers and unknown-symptom patients by applying DO/SAY/VALUE, interview planning, Kawakita, and Kano end-to-end.
> **Deliverables**:
> - Persona database structure with strict schemas and IDs
> - Source and claim registry with traceability links
> - Raw/intermediate/final framework artifacts per cohort
> - Synthetic interview answer sets (simulated transcripts) per cohort
> - Persona files with clustered needs and decision implications
> - Change log and validation ledger
> **Effort**: Large
> **Parallel**: YES - 5 waves
> **Critical Path**: T1 Rules/Schema -> T2 Evidence Ingestion -> T3 Framework Runs -> T4 Persona Synthesis -> T5 Validation + Packaging

## Context
### Original Request
Design synthetic personas and apply all shown frameworks for two targets: payer-type insurer roles and unknown-symptom patients seeking specialists. Start with system rules, implement markdown database artifacts (personas + raw/intermediate/final framework data), maintain a change tracker, and document every external source used.

### Interview Summary
- Scope explicitly includes multi-role insurer personas (analysts, executives, product owners, managers) plus patient personas.
- Required method stack: DO/SAY/VALUE, interview planning, Kawakita, Kano, and synthetic persona process from local methodology docs.
- Required data model: markdown files split by purpose (raw/intermediate/final + personas + audit/change tracking).

### Metis Review (gaps addressed)
- Added hard guardrails against hallucinated evidence via claim-source traceability.
- Added explicit conflict policy defaults for contradictory evidence.
- Added v1 scope locks to prevent tool/platform scope creep.
- Added executable validation gates for schema, references, framework completeness, and changelog integrity.

## Work Objectives
### Core Objective
Produce an evidence-grounded markdown persona system that yields decision-usable synthetic personas for both target cohorts, including clustered needs and framework-linked prioritization logic.

### Deliverables
- `methodology/persona_db/00_rules/` rules, scope, ethics, and schema contracts
- `methodology/persona_db/01_sources/` external/local evidence records
- `methodology/persona_db/02_claims/` atomic claims linked to sources
- `methodology/persona_db/03_framework_runs/` raw/intermediate/final outputs per framework/cohort
- `methodology/persona_db/04_personas/` finalized persona files
- `methodology/persona_db/05_synthesis/` clustered-needs and integrated DO/SAY/VALUE synthesis
- `methodology/persona_db/06_audit/` validation reports and decision/change ledger

### Definition of Done (verifiable conditions with commands)
- All required directories/files exist and follow naming schema.
- Every persona statement links to at least one `CLAIM-*`.
- Every `CLAIM-*` links to at least one `SOURCE-*` with quote/locator or is tagged `assumption` with validation plan.
- DO/SAY/VALUE + Interview Planning + Kawakita + Kano runs exist for both cohorts.
- Synthetic interview answers exist for both cohorts and are linked to `CLAIM-*` and `RUN-*` evidence.
- Clustered-needs outputs exist and map to personas and framework evidence.
- Changelog captures all modifications with reason and evidence delta.

### Must Have
- Evidence-first artifact chain: `SOURCE -> CLAIM -> FRAMEWORK_RUN -> PERSONA -> SYNTHESIS`
- Separate raw/intermediate/final files for each framework run
- Interview planning outputs include both question pools and synthetic answer sets
- Distinct insurer role personas and patient personas
- External-source registry with URL, access date, and relevance note
- Explicit assumptions ledger (no silent assumptions)

### Must NOT Have (guardrails, AI slop patterns, scope boundaries)
- No uncited factual assertions in persona/final synthesis files
- No medical diagnosis or treatment advice; patient cohort remains behavior/journey focused
- No framework expansion beyond requested set for v1
- No merging raw and final artifacts into single files
- No free-form "insights" that bypass claim IDs

## Verification Strategy
> ZERO HUMAN INTERVENTION - all verification is agent-executed.
- Test decision: tests-after using Bash + grep + schema-check scripts in markdown workflow
- QA policy: every task includes happy-path and failure/edge scenario
- Evidence: `.sisyphus/evidence/task-{N}-{slug}.{ext}`

## Execution Strategy
### Parallel Execution Waves
> Target: 5-8 tasks per wave.

Wave 1: Rules, schemas, ID contracts, and directory scaffolding
Wave 2: Source ingestion and claim normalization for both cohorts
Wave 3: Framework runs (DO/SAY/Interview+Kawakita/Kano/VALUE) per cohort
Wave 4: Persona construction, clustering, and integrated synthesis
Wave 5: Validation, contradiction checks, changelog finalization, packaging

### Dependency Matrix (full, all tasks)
- T1 blocks all tasks
- T2 depends on T1; blocks T3 and T4
- T3 depends on T2; blocks T4 and T5
- T4 depends on T2+T3; blocks T5
- T5 depends on T1-T4

### Agent Dispatch Summary (wave -> task count -> categories)
- Wave 1 -> 5 tasks -> writing, unspecified-high
- Wave 2 -> 5 tasks -> deep, writing
- Wave 3 -> 6 tasks -> deep, unspecified-high
- Wave 4 -> 5 tasks -> deep, writing
- Wave 5 -> 4 tasks -> unspecified-high, quick

## TODOs
> Implementation + Test = ONE task. Every task includes QA scenarios.

<!-- TASKS_INSERTION_POINT -->

- [x] 1. Define governance rules and scope locks

  **What to do**: Create `methodology/persona_db/00_rules/rules.md` with evidence policy, ID format policy, contradiction policy, assumption policy, v1 in/out scope, and prohibited content boundaries.
  **Must NOT do**: Do not add persona content in rules files.

  **Recommended Agent Profile**:
  - Category: `writing` - Reason: policy-heavy markdown authoring
  - Skills: `[]` - standard markdown work
  - Omitted: `playwright` - no browser automation required

  **Parallelization**: Can Parallel: NO | Wave 1 | Blocks: [2,3,4,5,6,7,8,9,10,11,12] | Blocked By: []

  **References**:
  - Pattern: `methodology/methodology_translated.md:217` - behavior-first and anti-bias framing
  - Pattern: `methodology/methodology_translated.md:322` - refresh/version cadence expectations
  - Pattern: `STRUCTURE.md:349` - canonical DO/SAY/VALUE architecture
  - External: `https://www.nngroup.com/articles/attitudinal-behavioral-research/` - behavioral vs attitudinal evidence distinction

  **Acceptance Criteria**:
  - [ ] `methodology/persona_db/00_rules/rules.md` exists and includes sections: `Evidence Rules`, `Assumption Rules`, `Conflict Resolution`, `Scope Boundaries`, `Versioning`.
  - [ ] File contains explicit policy: no uncited claim in final artifacts.

  **QA Scenarios**:
  ```text
  Scenario: Happy path - governance sections present
    Tool: Bash
    Steps: Run `grep -n "Evidence Rules\|Assumption Rules\|Conflict Resolution\|Scope Boundaries\|Versioning" methodology/persona_db/00_rules/rules.md`
    Expected: Five section matches returned
    Evidence: .sisyphus/evidence/task-1-governance-sections.txt

  Scenario: Failure/edge case - missing no-citation guardrail
    Tool: Bash
    Steps: Run `grep -n "no uncited claim" methodology/persona_db/00_rules/rules.md`
    Expected: At least one match; if none, task fails
    Evidence: .sisyphus/evidence/task-1-governance-sections-error.txt
  ```

  **Commit**: YES | Message: `docs(persona-db): add governance and scope rules` | Files: `methodology/persona_db/00_rules/rules.md`

- [x] 2. Create markdown database structure and naming manifest

  **What to do**: Create folder tree and `methodology/persona_db/00_rules/naming_manifest.md` defining canonical paths, filename templates, and ID formats (`SOURCE-*`, `CLAIM-*`, `RUN-*`, `PERSONA-*`, `CLUSTER-*`).
  **Must NOT do**: Do not place data records outside declared folders.

  **Recommended Agent Profile**:
  - Category: `quick` - Reason: deterministic scaffolding
  - Skills: `[]` - no specialized skill needed
  - Omitted: `git-master` - no git operation requirement

  **Parallelization**: Can Parallel: YES | Wave 1 | Blocks: [4,5,6,7,8,9,10,11,12] | Blocked By: [1]

  **References**:
  - Pattern: `.sisyphus/plans/synthetic-personas-insurer-patient.md:35` - artifact families already decided
  - Pattern: `methodology/methodology_translated.md:252` - variables and clustering flow to model folder flow
  - External: `https://nielseniq.com/global/en/landing-page/the-say-do-gap-measurement-framework/` - justifies separate behavioral/attitudinal tracks

  **Acceptance Criteria**:
  - [ ] Manifest lists all folder paths from `00_rules` to `06_audit`.
  - [ ] Manifest includes filename templates and regex-like ID examples for each record type.

  **QA Scenarios**:
  ```text
  Scenario: Happy path - all top-level folders created
    Tool: Bash
    Steps: Run `ls methodology/persona_db`
    Expected: `00_rules 01_sources 02_claims 03_framework_runs 04_personas 05_synthesis 06_audit`
    Evidence: .sisyphus/evidence/task-2-folder-tree.txt

  Scenario: Failure/edge case - missing ID family
    Tool: Bash
    Steps: Run `grep -n "SOURCE-\|CLAIM-\|RUN-\|PERSONA-\|CLUSTER-" methodology/persona_db/00_rules/naming_manifest.md`
    Expected: Matches for all five families; missing family fails task
    Evidence: .sisyphus/evidence/task-2-folder-tree-error.txt
  ```

  **Commit**: YES | Message: `docs(persona-db): add folder and naming manifest` | Files: `methodology/persona_db/**`

- [x] 3. Define record templates for source, claim, run, persona, cluster, and change log

  **What to do**: Add template markdown files in `methodology/persona_db/00_rules/templates/` with mandatory frontmatter keys and required sections for each record type.
  **Must NOT do**: Do not allow optional-only templates; required fields must be explicit.

  **Recommended Agent Profile**:
  - Category: `writing` - Reason: template and schema text precision
  - Skills: `[]` - standard markdown output
  - Omitted: `playwright` - non-UI task

  **Parallelization**: Can Parallel: YES | Wave 1 | Blocks: [5,6,7,8,9,10,11,12] | Blocked By: [1]

  **References**:
  - Pattern: `methodology/methodology_translated.md:272` - persona one-page required fields
  - Pattern: `methodology/methodology_translated.md:315` - required usage guide output
  - External: `https://www.bain.com/insights/the-elements-of-value-b2b-hbr/` - value definition framing for persona implications

  **Acceptance Criteria**:
  - [ ] Templates exist: `source_template.md`, `claim_template.md`, `framework_run_template.md`, `persona_template.md`, `cluster_template.md`, `changelog_template.md`.
  - [ ] Each template includes a `Required Fields` section.

  **QA Scenarios**:
  ```text
  Scenario: Happy path - template inventory complete
    Tool: Bash
    Steps: Run `ls methodology/persona_db/00_rules/templates`
    Expected: All six template files listed
    Evidence: .sisyphus/evidence/task-3-templates.txt

  Scenario: Failure/edge case - template lacks required fields section
    Tool: Bash
    Steps: Run `grep -n "Required Fields" methodology/persona_db/00_rules/templates/*.md`
    Expected: At least one match per template file
    Evidence: .sisyphus/evidence/task-3-templates-error.txt
  ```

  **Commit**: YES | Message: `docs(persona-db): add strict record templates` | Files: `methodology/persona_db/00_rules/templates/*.md`

- [x] 4. Build source registry with local and external evidence coverage

  **What to do**: Create `SOURCE-*` records for local framework files and external references; include title, URL/path, captured date, relevance note, and key evidence snippet.
  **Must NOT do**: Do not include sources without captured date or relevance statement.

  **Recommended Agent Profile**:
  - Category: `deep` - Reason: evidence curation quality
  - Skills: `[]` - tool-assisted research only
  - Omitted: `frontend-ui-ux` - irrelevant domain

  **Parallelization**: Can Parallel: YES | Wave 2 | Blocks: [5,6,7,8,9,10,11,12] | Blocked By: [1,2,3]

  **References**:
  - Pattern: `STRUCTURE.md:350` - DO anchor source
  - Pattern: `methodology/methodology_translated.md:141` - VALUE/Kano method anchor
  - External: `https://www.nngroup.com/articles/attitudinal-behavioral-research/` - research modality guardrail
  - External: `https://productplan.com/learn/kano-model-prioritization` - paired-question Kano method

  **Acceptance Criteria**:
  - [ ] At least 8 `SOURCE-*` files exist, including both local and external sources.
  - [ ] Every source file includes `captured_on`, `relevance`, and `evidence_snippet` fields.

  **QA Scenarios**:
  ```text
  Scenario: Happy path - source count and required metadata
    Tool: Bash
    Steps: Run `ls methodology/persona_db/01_sources | wc -l` and `grep -n "captured_on\|relevance\|evidence_snippet" methodology/persona_db/01_sources/*.md`
    Expected: Count >= 8 and required metadata present in all files
    Evidence: .sisyphus/evidence/task-4-sources.txt

  Scenario: Failure/edge case - undocumented external source
    Tool: Bash
    Steps: Run `grep -n "http" methodology/persona_db/01_sources/*.md | wc -l`
    Expected: Any external URL used in synthesis must be represented; missing URL mapping fails task
    Evidence: .sisyphus/evidence/task-4-sources-error.txt
  ```

  **Commit**: YES | Message: `docs(persona-db): register local and external evidence sources` | Files: `methodology/persona_db/01_sources/*.md`

- [x] 5. Convert source evidence into atomic claims with confidence and type tags

  **What to do**: Create `CLAIM-*` files for each distinct assertion, tagged as `fact`, `inference`, or `assumption`; map each claim to one or more source snippets and target cohort(s).
  **Must NOT do**: Do not include multi-assertion claims; one claim per file.

  **Recommended Agent Profile**:
  - Category: `deep` - Reason: analytical decomposition and traceability
  - Skills: `[]` - markdown only
  - Omitted: `create-skill` - no skill scaffolding needed

  **Parallelization**: Can Parallel: YES | Wave 2 | Blocks: [6,7,8,9,10,11,12] | Blocked By: [4]

  **References**:
  - Pattern: `methodology/methodology_translated.md:237` - evidence-informed modeling requirement
  - Pattern: `STRUCTURE.md:498` - integrated view requiring claim separation by DO/SAY/VALUE intent
  - External: `https://www.nngroup.com/articles/attitudinal-behavioral-research/` - supports type-tag policy

  **Acceptance Criteria**:
  - [ ] `CLAIM-*` inventory exists with at least 30 claims total across both cohorts.
  - [ ] Every claim has `claim_type`, `confidence`, `applies_to`, and `source_refs`.

  **QA Scenarios**:
  ```text
  Scenario: Happy path - claim schema completeness
    Tool: Bash
    Steps: Run `grep -n "claim_type\|confidence\|applies_to\|source_refs" methodology/persona_db/02_claims/*.md`
    Expected: Required keys present in all claim files
    Evidence: .sisyphus/evidence/task-5-claims.txt

  Scenario: Failure/edge case - orphan claim without source
    Tool: Bash
    Steps: Run `grep -n "source_refs: \[\]" methodology/persona_db/02_claims/*.md`
    Expected: No matches for fact/inference claims; any match fails task
    Evidence: .sisyphus/evidence/task-5-claims-error.txt
  ```

  **Commit**: YES | Message: `docs(persona-db): normalize evidence into atomic claims` | Files: `methodology/persona_db/02_claims/*.md`

- [x] 6. Run DO framework for insurer and patient cohorts (raw/intermediate/final)

  **What to do**: Create `RUN-*` DO artifacts under `03_framework_runs/do/{raw,intermediate,final}/` for each cohort; include observed behaviors, sequence/order, friction, workarounds, hidden dependencies, and implicit needs.
  **Must NOT do**: Do not infer behavior from attitudinal-only evidence without assumption tag.

  **Recommended Agent Profile**:
  - Category: `deep` - Reason: behavioral synthesis and conflict handling
  - Skills: `[]` - markdown analytical output
  - Omitted: `frontend-ui-ux` - irrelevant

  **Parallelization**: Can Parallel: YES | Wave 3 | Blocks: [9,10,11,12] | Blocked By: [5]

  **References**:
  - Pattern: `methodology/methodology_translated.md:74` - DO methods and expected outputs
  - Pattern: `STRUCTURE.md:390` - behavioral journey and friction map outputs
  - External: `https://nielseniq.com/global/en/landing-page/the-say-do-gap-measurement-framework/` - DO validation context

  **Acceptance Criteria**:
  - [ ] DO run files exist for both cohorts in raw/intermediate/final states.
  - [ ] Final DO outputs include: behavioral journey map, friction map, implicit needs list.

  **QA Scenarios**:
  ```text
  Scenario: Happy path - dual-cohort DO run completeness
    Tool: Bash
    Steps: Run `ls methodology/persona_db/03_framework_runs/do/raw && ls methodology/persona_db/03_framework_runs/do/intermediate && ls methodology/persona_db/03_framework_runs/do/final`
    Expected: insurer and patient files exist in all three states
    Evidence: .sisyphus/evidence/task-6-do-runs.txt

  Scenario: Failure/edge case - missing friction map in final DO
    Tool: Bash
    Steps: Run `grep -n "Friction map" methodology/persona_db/03_framework_runs/do/final/*.md`
    Expected: One match per cohort final file
    Evidence: .sisyphus/evidence/task-6-do-runs-error.txt
  ```

  **Commit**: YES | Message: `docs(persona-db): add DO framework runs for both cohorts` | Files: `methodology/persona_db/03_framework_runs/do/**`

- [x] 7. Run SAY framework: interview planning and Kawakita clustering for both cohorts

  **What to do**: Generate SAY raw interview question pools, intermediate fragment clusters, and final thematic outputs including priority drivers, declared values, and perceived competition.
  **Must NOT do**: Do not convert thematic statements into facts without claim references.

  **Recommended Agent Profile**:
  - Category: `deep` - Reason: qualitative clustering and synthesis
  - Skills: `[]` - no extra skills required
  - Omitted: `playwright` - no browser UI validation

  **Parallelization**: Can Parallel: YES | Wave 3 | Blocks: [9,10,11,12] | Blocked By: [5]

  **References**:
  - Pattern: `methodology/methodology_translated.md:101` - SAY methods and outputs
  - Pattern: `STRUCTURE.md:420` - key question clusters canonical structure
  - External: `https://www.nngroup.com/articles/attitudinal-behavioral-research/` - SAY/DO separation guardrail

  **Acceptance Criteria**:
  - [ ] SAY run files exist for both cohorts in raw/intermediate/final states.
  - [ ] Final SAY outputs include thematic clusters, priority drivers, declared values, perceived competition.

  **QA Scenarios**:
  ```text
  Scenario: Happy path - SAY outputs complete
    Tool: Bash
    Steps: Run `grep -n "Thematic clusters\|Priority drivers\|Declared values\|Perceived competition" methodology/persona_db/03_framework_runs/say/final/*.md`
    Expected: Four output headings present per cohort
    Evidence: .sisyphus/evidence/task-7-say-runs.txt

  Scenario: Failure/edge case - no question-cluster coverage
    Tool: Bash
    Steps: Run `grep -n "Current behavior\|Pain\|Choice criteria\|Trade-offs\|Ecosystem" methodology/persona_db/03_framework_runs/say/raw/*.md`
    Expected: All five clusters represented; missing cluster fails task
    Evidence: .sisyphus/evidence/task-7-say-runs-error.txt
  ```

  **Commit**: YES | Message: `docs(persona-db): add SAY interview and Kawakita runs` | Files: `methodology/persona_db/03_framework_runs/say/**`

- [x] 8. Run VALUE/Kano framework with paired functional-dysfunctional logic

  **What to do**: Create VALUE/Kano run artifacts for both cohorts, including paired questions, categorization (must-have/competitive/delighter), investment prioritization logic, and roadmap implications.
  **Must NOT do**: Do not classify Kano categories without explicit paired-question rationale.

  **Recommended Agent Profile**:
  - Category: `unspecified-high` - Reason: method precision with ranking logic
  - Skills: `[]` - standard markdown workflow
  - Omitted: `frontend-ui-ux` - non-UI scope

  **Parallelization**: Can Parallel: YES | Wave 3 | Blocks: [9,10,11,12] | Blocked By: [5]

  **References**:
  - Pattern: `methodology/methodology_translated.md:141` - VALUE method and outputs
  - Pattern: `STRUCTURE.md:464` - paired functional/dysfunctional rule
  - External: `https://productplan.com/learn/kano-model-prioritization` - practical paired-question examples

  **Acceptance Criteria**:
  - [ ] VALUE/Kano run files exist in raw/intermediate/final for both cohorts.
  - [ ] Final outputs include feature categorization, investment prioritization logic, and roadmap logic.

  **QA Scenarios**:
  ```text
  Scenario: Happy path - Kano paired-question coverage
    Tool: Bash
    Steps: Run `grep -n "If this feature exists\|If this feature does not exist" methodology/persona_db/03_framework_runs/value/raw/*.md`
    Expected: Both paired prompts appear in each cohort file
    Evidence: .sisyphus/evidence/task-8-kano-runs.txt

  Scenario: Failure/edge case - missing categorization output
    Tool: Bash
    Steps: Run `grep -n "Feature categorization\|Investment prioritization logic\|Roadmap logic" methodology/persona_db/03_framework_runs/value/final/*.md`
    Expected: All three output headings present per cohort
    Evidence: .sisyphus/evidence/task-8-kano-runs-error.txt
  ```

  **Commit**: YES | Message: `docs(persona-db): add VALUE Kano runs and prioritization outputs` | Files: `methodology/persona_db/03_framework_runs/value/**`

- [x] 9. Design insurer-role synthetic personas with evidence-linked needs and clusters

  **What to do**: Create 4-5 insurer personas (`analyst`, `executive`, `product_owner`, `operations_manager`, optional `network_manager`) with structured sections, ranked decision criteria, barriers/triggers, and links to cluster IDs and claim IDs.
  **Must NOT do**: Do not use demographic stereotypes as causal drivers.

  **Recommended Agent Profile**:
  - Category: `deep` - Reason: multi-role synthesis with strict evidence mapping
  - Skills: `[]` - markdown-based output
  - Omitted: `playwright` - not required

  **Parallelization**: Can Parallel: YES | Wave 4 | Blocks: [11,12] | Blocked By: [6,7,8]

  **References**:
  - Pattern: `methodology/methodology_translated.md:224` - persona architecture choices
  - Pattern: `methodology/methodology_translated.md:272` - required persona structure
  - Pattern: `STRUCTURE.md:523` - insurer personas target confirmation

  **Acceptance Criteria**:
  - [ ] 4-5 insurer persona files exist under `04_personas/insurers/`.
  - [ ] Each persona includes ranked criteria, top motivations/pains, barriers/triggers, and `claim_refs`.

  **QA Scenarios**:
  ```text
  Scenario: Happy path - insurer persona count and schema
    Tool: Bash
    Steps: Run `ls methodology/persona_db/04_personas/insurers | wc -l` and `grep -n "Ranked decision criteria\|Barriers\|Triggers\|claim_refs" methodology/persona_db/04_personas/insurers/*.md`
    Expected: Count between 4 and 5 and required fields present in all files
    Evidence: .sisyphus/evidence/task-9-insurer-personas.txt

  Scenario: Failure/edge case - demographic shortcut usage
    Tool: Bash
    Steps: Run `grep -n "because of age\|because of gender\|because of race" methodology/persona_db/04_personas/insurers/*.md`
    Expected: No stereotype-causal matches
    Evidence: .sisyphus/evidence/task-9-insurer-personas-error.txt
  ```

  **Commit**: YES | Message: `docs(persona-db): add insurer-role synthetic personas` | Files: `methodology/persona_db/04_personas/insurers/*.md`

- [x] 10. Design unknown-symptom patient synthetic personas with journey-safe constraints

  **What to do**: Create 3-5 patient personas focused on specialist-seeking behavior for unknown symptoms; include uncertainty tolerance, trust needs, channel behavior, barriers, and escalation triggers without clinical diagnosis claims.
  **Must NOT do**: Do not include diagnosis assertions, treatment recommendations, or medical advice.

  **Recommended Agent Profile**:
  - Category: `deep` - Reason: sensitive-domain persona framing
  - Skills: `[]` - no additional skills required
  - Omitted: `frontend-ui-ux` - irrelevant

  **Parallelization**: Can Parallel: YES | Wave 4 | Blocks: [11,12] | Blocked By: [6,7,8]

  **References**:
  - Pattern: `STRUCTURE.md:525` - unknown-symptom patient target confirmation
  - Pattern: `methodology/methodology_translated.md:217` - ethics and boundaries for synthetic personas
  - Pattern: `methodology/methodology_translated.md:248` - variable extraction expectations

  **Acceptance Criteria**:
  - [ ] 3-5 patient persona files exist under `04_personas/patients_unknown_symptom/`.
  - [ ] Every patient persona includes no-medical-advice disclaimer and claim references.

  **QA Scenarios**:
  ```text
  Scenario: Happy path - patient persona coverage
    Tool: Bash
    Steps: Run `ls methodology/persona_db/04_personas/patients_unknown_symptom | wc -l` and `grep -n "claim_refs\|no-medical-advice" methodology/persona_db/04_personas/patients_unknown_symptom/*.md`
    Expected: Count between 3 and 5; disclaimer and claim refs present in all files
    Evidence: .sisyphus/evidence/task-10-patient-personas.txt

  Scenario: Failure/edge case - accidental diagnosis language
    Tool: Bash
    Steps: Run `grep -n "diagnosis\|you should take\|prescribe" methodology/persona_db/04_personas/patients_unknown_symptom/*.md`
    Expected: No advisory/diagnostic phrasing
    Evidence: .sisyphus/evidence/task-10-patient-personas-error.txt
  ```

  **Commit**: YES | Message: `docs(persona-db): add unknown-symptom patient personas` | Files: `methodology/persona_db/04_personas/patients_unknown_symptom/*.md`

- [x] 11. Build clustered-needs database and integrated DO/SAY/VALUE synthesis

  **What to do**: Create cluster records and final synthesis files mapping cluster-level needs to insurer and patient personas, with explicit links back to DO/SAY/VALUE outputs and claim IDs.
  **Must NOT do**: Do not create clusters that lack claim evidence support.

  **Recommended Agent Profile**:
  - Category: `deep` - Reason: cross-artifact synthesis complexity
  - Skills: `[]` - markdown synthesis
  - Omitted: `playwright` - no UI flow

  **Parallelization**: Can Parallel: NO | Wave 4 | Blocks: [12] | Blocked By: [9,10]

  **References**:
  - Pattern: `STRUCTURE.md:500` - integrated DO/SAY/VALUE relationship
  - Pattern: `methodology/methodology_translated.md:173` - integrated view wording
  - Pattern: `methodology/methodology_translated.md:262` - cluster construction flow

  **Acceptance Criteria**:
  - [ ] `05_synthesis/clusters/` includes cohort-specific `CLUSTER-*` records.
  - [ ] Final synthesis files include trace links: `cluster_refs`, `persona_refs`, `run_refs`, `claim_refs`.

  **QA Scenarios**:
  ```text
  Scenario: Happy path - cluster-to-persona traceability
    Tool: Bash
    Steps: Run `grep -n "cluster_refs\|persona_refs\|run_refs\|claim_refs" methodology/persona_db/05_synthesis/*.md`
    Expected: All four ref families present in each final synthesis file
    Evidence: .sisyphus/evidence/task-11-synthesis.txt

  Scenario: Failure/edge case - unsupported cluster
    Tool: Bash
    Steps: Run `grep -n "claim_refs: \[\]" methodology/persona_db/05_synthesis/clusters/*.md`
    Expected: No empty claim reference lists
    Evidence: .sisyphus/evidence/task-11-synthesis-error.txt
  ```

  **Commit**: YES | Message: `docs(persona-db): add clustered-needs and integrated synthesis` | Files: `methodology/persona_db/05_synthesis/**`

- [x] 12. Create audit trail, validation reports, and change tracking ledger

  **What to do**: Add `06_audit/validation_report.md`, `06_audit/contradictions.md`, and `06_audit/changelog.md`; log all modifications and unresolved assumptions with expiration and validation method.
  **Must NOT do**: Do not finalize without contradiction and assumption sections.

  **Recommended Agent Profile**:
  - Category: `unspecified-high` - Reason: compliance and consistency checks
  - Skills: `[]` - markdown governance
  - Omitted: `frontend-ui-ux` - irrelevant

  **Parallelization**: Can Parallel: NO | Wave 5 | Blocks: [] | Blocked By: [11]

  **References**:
  - Pattern: `methodology/methodology_translated.md:332` - changelog requirement
  - Pattern: `.sisyphus/plans/synthetic-personas-insurer-patient.md:56` - assumptions boundary
  - External: `https://www.nngroup.com/articles/attitudinal-behavioral-research/` - contradiction evaluation anchor

  **Acceptance Criteria**:
  - [ ] Audit files exist and contain: validation summary, contradiction log, changelog entries, assumption review table.
  - [ ] Changelog contains versioned entries with `what_changed`, `why`, and `evidence_delta`.

  **QA Scenarios**:
  ```text
  Scenario: Happy path - audit suite complete
    Tool: Bash
    Steps: Run `ls methodology/persona_db/06_audit` and `grep -n "what_changed\|why\|evidence_delta" methodology/persona_db/06_audit/changelog.md`
    Expected: All audit files present and required changelog keys present
    Evidence: .sisyphus/evidence/task-12-audit.txt

  Scenario: Failure/edge case - unresolved assumption lacks validation plan
    Tool: Bash
    Steps: Run `grep -n "assumption" methodology/persona_db/06_audit/validation_report.md` and `grep -n "validation_method\|expires_on" methodology/persona_db/06_audit/validation_report.md`
    Expected: Every listed assumption includes validation method and expiry
    Evidence: .sisyphus/evidence/task-12-audit-error.txt
  ```

  **Commit**: YES | Message: `docs(persona-db): add audit reports and change tracking` | Files: `methodology/persona_db/06_audit/*.md`

- [ ] 13. Generate synthetic interview answers for both cohorts and link to evidence chain

  **What to do**: Create synthetic interview answer artifacts (simulated responses) for insurer and patient cohorts under `methodology/persona_db/03_framework_runs/say/raw/` as cohort-specific companion files linked to existing SAY question pools; ensure each answer fragment is tagged with `CLAIM-*` and mapped forward into SAY intermediate/final outputs.
  **Must NOT do**: Do not present synthetic answers as real interview transcripts; all simulated content must be clearly labeled as synthetic.

  **Recommended Agent Profile**:
  - Category: `deep` - Reason: structured qualitative simulation with strict traceability
  - Skills: `[]` - markdown evidence mapping
  - Omitted: `playwright` - no UI flow

  **Parallelization**: Can Parallel: YES | Wave 3 | Blocks: [9,10,11,12,F1,F2,F3,F4] | Blocked By: [5]

  **References**:
  - Pattern: `methodology/persona_db/03_framework_runs/say/raw/RUN-20260223-insurer-say-001.md` - existing interview question pool structure
  - Pattern: `methodology/persona_db/03_framework_runs/say/raw/RUN-20260223-patient_unknown_symptom-say-001.md` - cohort-specific SAY prompts
  - Pattern: `methodology/persona_db/00_rules/rules.md` - synthetic-content and evidence traceability guardrails

  **Acceptance Criteria**:
  - [ ] Synthetic answer artifacts exist for both cohorts and are clearly labeled `synthetic` in title/body and frontmatter.
  - [ ] Each simulated answer block includes at least one `CLAIM-*` reference and mapping to the parent SAY `RUN-*` ID.
  - [ ] SAY intermediate/final artifacts reference synthetic-answer inputs in their `inputs`/trace sections.

  **QA Scenarios**:
  ```text
  Scenario: Happy path - synthetic interview answer coverage
    Tool: Bash
    Steps: Run `grep -n "synthetic\|CLAIM-\|RUN-20260223-.*-say-001" methodology/persona_db/03_framework_runs/say/raw/*.md`
    Expected: Matches in both cohort answer artifacts with explicit synthetic labels and claim/run links
    Evidence: .sisyphus/evidence/task-13-synthetic-interview-answers.txt

  Scenario: Failure/edge case - simulated content mislabeled as real interview
    Tool: Bash
    Steps: Run `grep -n "real interview\|actual transcript\|verbatim participant" methodology/persona_db/03_framework_runs/say/raw/*.md`
    Expected: No misleading "real interview" phrasing; any match fails task
    Evidence: .sisyphus/evidence/task-13-synthetic-interview-answers-error.txt
  ```

  **Commit**: YES | Message: `docs(persona-db): add synthetic interview answer artifacts` | Files: `methodology/persona_db/03_framework_runs/say/raw/*.md`, `methodology/persona_db/03_framework_runs/say/{intermediate,final}/*.md`

## Final Verification Wave (4 parallel agents, ALL must APPROVE)
- [x] F1. Plan Compliance Audit - oracle
- [x] F2. Code Quality Review - unspecified-high
- [ ] F3. Real Manual QA - unspecified-high (+ playwright if UI)
- [ ] F4. Scope Fidelity Check - deep

## Commit Strategy
- Commit per completed wave with atomic scope:
  - `docs(persona-db): add rules and schema contracts`
  - `docs(persona-db): ingest sources and normalize claims`
  - `docs(persona-db): add framework runs for insurer and patient cohorts`
  - `docs(persona-db): synthesize personas and clustered needs`
  - `docs(persona-db): add validation reports and changelog`

## Success Criteria
- Two cohort families complete: insurer-role personas and unknown-symptom patient personas
- Persona files are decision-usable: needs, clustered needs, barriers, triggers, channels, and ranked criteria
- Synthetic interview question-and-answer evidence is available for both cohorts and trace-linked into SAY outputs
- DO/SAY/VALUE evidence is integrated, traceable, and contradiction-managed
- External sources are fully documented and mapped to claims
- Audit artifacts prove reproducibility and update history


- [x] 13. Generate synthetic interview answers for both cohorts and link to evidence chain