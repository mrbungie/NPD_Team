# Learnings

Append-only. Capture conventions, gotchas, and patterns discovered while executing the plan.

- Linked governance rules to  for ethics and refresh cycles.
- Locked version 1 scope to  frameworks: DO/SAY/VALUE, Kawakita, and Kano.
- Implemented mandatory  and  for assumptions.
- Prioritized competing hypotheses over forced consensus in conflict resolution.

- Linked governance rules to methodology/methodology_translated.md for ethics and refresh cycles.
- Locked version 1 scope to STRUCTURE.md frameworks: DO/SAY/VALUE, Kawakita, and Kano.
- Implemented mandatory expires_on and validation_method for assumptions.
- Prioritized competing hypotheses over forced consensus in conflict resolution.

- 2026-02-23: Clean-up note: earlier bullets with missing file names were generated with blanks; treat the later duplicated bullets as canonical.

## Task 2 (2026-02-23): Naming Manifest and Database Structure

### Created Artifacts
- **Directory tree:** `methodology/persona_db/` with 7 tiers (00_rules through 06_audit).
- **Manifest:** `methodology/persona_db/00_rules/naming_manifest.md` — defines ID families, validation rules, and cohort canonical slugs.

### ID Families Established
- **SOURCE-YYYYMMDD-NNN** — Raw interview/vendor data (01_sources/)
- **CLAIM-YYYYMMDD-NNN** — Extracted assertions with SOURCE backreferences (02_claims/)
- **RUN-YYYYMMDD-<cohort>-<framework>-NNN** — Framework application outputs (03_framework_runs/)
  - Valid frameworks: `do-say-value`, `kawakita`, `kano`
- **PERSONA-<cohort>-NNN-<slug>** — Synthesized profiles with RUN references (04_personas/)
- **CLUSTER-<cohort>-NNN-<slug>** — Meta-groupings of personas (04_personas/)

### Canonical Cohorts (Locked)
- `insurer` — Insurance decision-makers, claims processors, medical directors.
- `patient-unknown-symptom` — Patients with undiagnosed/unclear conditions.

- 2026-02-23: Correction: canonical patient cohort slug is `patient_unknown_symptom` (underscore) per `methodology/persona_db/00_rules/naming_manifest.md`.

### Key Design Decisions
1. **Determinism:** IDs use date + sequence; same inputs → same ID.
2. **Sortability:** Lexicographic order matches chronological and hierarchical intent.
3. **Evidence chain:** Every derived record must cite its sources (backreferences).
4. **Immutability:** Once assigned, IDs never change; versioning uses audit trail.
5. **ASCII-only, lowercase + hyphens:** Ensures compatibility and consistency.
6. **Storage guarantee:** All records must reside within `methodology/persona_db/` or be rejected.

### Mandatory Metadata
- Every record includes YAML frontmatter: `id`, `type`, `cohort` (omit for SOURCE/CLAIM), `created_at`, `created_by`, `version`, `status`.

### Validation and Governance
- Cross-reference integrity enforced (CLAIM → SOURCE, RUN → CLAIM, PERSONA → RUN, CLUSTER → PERSONA).
- Dangling references are errors.
- Expired claims moved to 06_audit/ with lineage trace.
- Personas version-tracked; superseded versions preserved in 06_audit/.

### Directory Tier Purposes
1. `00_rules/` — Governance, rules, templates.
2. `01_sources/` — Raw interview transcripts, vendor data.
3. `02_claims/` — Extracted hypotheses.
4. `03_framework_runs/` — Framework application outputs.
5. `04_personas/` — Synthesized profiles and clusters.
6. `05_synthesis/` — Cross-cohort aggregations (no strict ID format).
7. `06_audit/` — Validation logs, lineage, evidence chains.

### Convention Notes
- Filenames and IDs are always lowercase with hyphens.
- Framework abbreviations are lowercase: `do-say-value` (not `Do-Say-Value`).
- Slug max 40 chars; human-readable descriptors.
- One file per record; no multi-record files.

## Task 3 (2026-02-23): Record Templates Definition

### Created Artifacts
- **Templates directory:** `methodology/persona_db/00_rules/templates/`
- **Templates created:** `source_template.md`, `claim_template.md`, `framework_run_template.md`, `persona_template.md`, `cluster_template.md`, `changelog_template.md`.

### Template Design Conventions
1. **YAML Frontmatter:** Every template includes mandatory keys for metadata and cross-referencing.
   - `source`: `id`, `kind`, `title`, `published_on`, `captured_on`, `url_or_location`, `usage_notes`, `evidence_snippet`
   - `claim`: `id`, `statement`, `claim_type`, `confidence`, `applies_to`, `source_refs`, `review_status`
   - `framework_run`: `id`, `framework`, `cohort`, `inputs`, `raw_output`, `intermediate_output`, `final_output`, `run_date`, `prompt_fingerprint`
   - `persona`: `id`, `cohort`, `role`, `status`, `version`, `last_reviewed`, `derived_from_runs`, `cluster_refs`, `claim_refs`
   - `cluster`: `id`, `cohort`, `label`, `definition`, `persona_refs`, `claim_refs`
   - `changelog`: `version`, `changed_at`, `what_changed`, `why`, `evidence_delta`

2. **Required Fields Section:** Each template includes a `## Required Fields` section at the end, providing definitions and examples for YAML keys to ensure consistency.

3. **Evidence Discipline (Persona Template):** 
   - Mandatory rule: "No Uncited Assertions". Every bullet point and statement in this persona must cite a `CLAIM-*` ID.
   - Fictional storytelling and demographics-only profiles are explicitly prohibited.
   - Sections aligned with `methodology_translated.md` Step 7: Job-to-be-Done, Context of Use, Motivations/Pains (SAY/DO), Ranked Decision Criteria (SAY/VALUE), Barriers/Anxieties/Triggers (DO), Channels/Touchpoints (DO).

4. **Kano Integration:** The Persona template includes a "Ranked Decision Criteria" section mapping to the VALUE/Kano framework, and "Design Implications" for actionable messaging and UX decisions.

5. **Markdown Only:** All templates are pure Markdown, ensuring readability across all tools.

## Task 3 (2026-02-23): Fix Naming Manifest Cohort Slug

- **Correction:** Changed canonical cohort slug from `patient-unknown-symptom` (hyphens) to `patient_unknown_symptom` (underscores) to match plan specification.
- **Scope:** Updated 6 occurrences: valid cohorts list, 3 examples (RUN, PERSONA, CLUSTER), and YAML metadata example.
- **Casing clarification:** Fixed statement on line 39 to clarify that ID prefixes are **uppercase ASCII** (SOURCE-, CLAIM-, etc.), while cohort slugs and file components use **lowercase + underscores/hyphens**.
- **Consistency:** All five ID families (SOURCE-, CLAIM-, RUN-, PERSONA-, CLUSTER-) verified present in manifest.

## Template Alignment (2026-02-23)
- Updated all record templates in `00_rules/templates/` to use uppercase ID family prefixes (PERSONA-, CLUSTER-, etc.) and canonical cohort slugs (insurer, patient_unknown_symptom) in examples and required fields.

## Task 4 (2026-02-23): Fix Cohort Slug Wording Contradiction

- **Minimal edit:** Updated line 85 to clarify cohort slug rule: `(lowercase, underscores or hyphens)` instead of `(lowercase, hyphens)`.
- **Rationale:** Canonical cohort `patient_unknown_symptom` uses underscores; wording now matches reality.
- **Consistency:** All references to cohort slugs now aligned; canonical values unchanged.
- 2026-02-23: Created 8 SOURCE records in `methodology/persona_db/01_sources/`; external domains used were `nngroup.com`, `productplan.com`, `nielseniq.com`, and `mckinsey.com`.
- 2026-02-23: Created 30 atomic `CLAIM-*` records in `methodology/persona_db/02_claims/`, covering method rules (DO vs SAY), Kano paired-question and prioritization logic, journey-over-touchpoint framing, and governance/naming constraints; all fact/inference claims include non-empty `source_refs` with quote+locator.
- 2026-02-23: Ran DO framework outputs for run IDs `RUN-20260223-insurer-do-001` and `RUN-20260223-patient_unknown_symptom-do-001` with raw/intermediate/final artifacts under `methodology/persona_db/03_framework_runs/do/`.
- 2026-02-23: Built synthesis clusters with counts by cohort: insurer=3 and patient_unknown_symptom=3 under `methodology/persona_db/05_synthesis/clusters/`.
- 2026-02-23: Created audit trail artifacts in `methodology/persona_db/06_audit/`: `validation_report.md` (record counts, cross-reference integrity, 156 assumption markers across 26 files, cohort-specific evidence gaps for decision-complete), `contradictions.md` (9 contradictions logged: 5 structural/low, 4 claim-level/medium), and `changelog.md` (v1.0.0 entry with `what_changed`, `why`, `evidence_delta` fields per template). Key finding: entire database is synthetic with no primary data; all personas blocked from Approved status until behavioral observation, interviews, and Kano survey data are collected.
- 2026-02-23: Added explicit Kawakita framework RUN artifacts for both cohorts across raw/intermediate/final stages under `methodology/persona_db/03_framework_runs/kawakita/` to restore CLUSTER -> RUN lineage traceability.

## Real Manual QA Walkthrough Learnings (2026-02-23)

### Forward Navigation Chain: FULLY WORKING
- Both cohort paths (insurer, patient) are traversable end-to-end: synthesis → cluster → persona → run → claim → source
- Every ID referenced in frontmatter of synthesis, cluster, persona files points to files that exist
- No dangling forward references detected at any tier

### Run ID Ambiguity Pattern
- Each RUN ID (e.g., `RUN-20260223-insurer-do-001`) exists across 3 files (raw/intermediate/final) with identical `id:` frontmatter
- ID-based lookup requires stage disambiguation; a naive tool would return 3 matches
- This is a structural pattern, not a bug, but any tooling must account for it

### CLAIM-013 and CLAIM-018 Are Method Claims, Not Orphans
- These claims serve as Kano framework scaffolding (method framing)
- Referenced only by VALUE/Kano runs, not by personas/clusters/synthesis
- Should be distinguished from truly orphaned evidence claims

## Task 5 (2026-02-24): Populate Persona Back-References to Clusters

### Methodology
Computed `cluster_refs` for all 8 personas by:
1. Extracted `persona_refs` lists from all 6 cluster files in `methodology/persona_db/05_synthesis/clusters/`
2. Built inverse mapping: for each persona ID, collected all CLUSTER-* files that list it in `persona_refs`
3. Sorted cluster IDs lexicographically within each persona's `cluster_refs` list for determinism

### Key Pattern
- **Insurer cohort (4 personas, 3 clusters):**
  - PERSONA-insurer-001: appears in CLUSTER-001 and CLUSTER-002 (2 refs)
  - PERSONA-insurer-002: appears in CLUSTER-001, CLUSTER-002, CLUSTER-003 (3 refs)
  - PERSONA-insurer-003: appears in CLUSTER-002, CLUSTER-003 (2 refs)
  - PERSONA-insurer-004: appears in CLUSTER-001, CLUSTER-002, CLUSTER-003 (3 refs)

- **Patient Unknown Symptom cohort (4 personas, 3 clusters):**
  - All 4 personas appear in all 3 clusters (3 refs each)
  - Uniform distribution suggests intentional cross-cutting concern design

### Frontmatter Fix
- Added missing `CLAIM-20260223-021` to `PERSONA-patient_unknown_symptom-002-trust-first-verifier` `claim_refs`
- Claim was cited in body (lines 39, 46 per manual review) but absent from frontmatter
- Inserted at correct lexicographic position in sorted claim ID list

### Verification
- Confirmed zero personas have `cluster_refs: []` post-fix (verified via grep)
- All 8 persona files have 2-3 cluster back-references populated
- Bidirectional traceability now complete: clusters → personas AND personas → clusters


## Task F3 Re-Run Manual QA (2026-02-24)

### Result: PASS — All navigation chains intact

### Forward Chain (both cohorts):
- synthesis → cluster → persona → run → claim → source: all links resolve
- Insurer: 3 clusters, 4 personas, 4 runs, 9 claims, 5 sources
- Patient: 3 clusters, 4 personas, 4 runs, 10 claims, 5 sources
- Zero dangling forward references

### Reverse Chain (both cohorts):
- All 8 persona `cluster_refs` match the clusters' `persona_refs` bidirectionally
- Insurer: varied distribution (2-3 clusters per persona)
- Patient: uniform distribution (all 4 personas in all 3 clusters)

### Kawakita Run Reachability:
- Both synthesis files and all 6 clusters include correct kawakita run ID
- Files exist at kawakita/final/ for both cohorts

### Dead Ends: NONE
### Issues: NONE

## Quality Review F2 Findings (2026-02-24)

- PASS for v1 deliverable — all previous top issues resolved
- Zero TODO/FIXME/TBD markers anywhere in persona_db
- Full bidirectional lineage chain verified: SOURCE→CLAIM→RUN→PERSONA→CLUSTER→SYNTHESIS
- All 8 personas have populated cluster_refs (CTX-008 fixed but contradictions.md not updated)
- 16/30 claims are infrastructure-only (feed runs, not personas) — this is by design but undocumented
- CTX-001 and CTX-002 in contradictions.md are factually wrong about manifest contents
- CLAIM-019 applies_to should be 'both' not 'insurer' — used in patient synthesis
- Kano runs have framework field mismatch: stored in value/ dir, IDs say kano, frontmatter says value
- Status casing inconsistent: Draft vs draft across tiers