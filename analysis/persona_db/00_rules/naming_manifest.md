# Naming Manifest for Persona Database

**Last updated:** 2026-02-23  
**Version:** 1.0  
**Status:** Canonical

---

## Core Principle

This manifest defines the **canonical naming conventions, ID families, file paths, and storage rules** for the entire synthetic personas database. All records must conform to these rules or be rejected at validation.

**⚠️ CRITICAL WARNING:** Do not store records outside this tree. All persona-related data must reside within `analysis/persona_db/`. Records found elsewhere are not authoritative.

---

## Directory Structure

The database is organized into seven tiers, each with a specific purpose:

```
analysis/persona_db/
├── 00_rules/              # Governance, rules, templates
│   ├── rules.md           # Ethics, refresh cycles, versioning
│   ├── naming_manifest.md # This file
│   └── templates/         # Record templates ending in _template.md (do not instantiate here)
├── 01_sources/            # Raw interview transcripts, recordings metadata, vendor data
├── 02_claims/             # Extracted/synthesized claims from sources (can be shared: applies_to: both)
├── 03_framework_runs/     # Framework application outputs (nested: framework/stage/)
├── 04_personas/           # Synthesized personas by cohort subdirectory
├── 05_synthesis/          # Clusters and cross-cohort aggregations (clusters in clusters/)
└── 06_audit/              # Validation logs, lineage chains, evidence traces
```

---

## ID Families and Formats

ID prefixes are **uppercase ASCII** (SOURCE-, CLAIM-, RUN-, PERSONA-, CLUSTER-); cohort slugs and file components use **lowercase + underscores/hyphens, deterministic, and sortable**.

### 1. SOURCE-* (Raw Evidence)

**Format:** `SOURCE-YYYYMMDD-NNN`

- `YYYY` = year  
- `MM` = month  
- `DD` = day of capture/ingestion  
- `NNN` = zero-padded sequence (001–999 per day)

**Examples:**
- `SOURCE-20260101-001` (first interview, Jan 1 2026)
- `SOURCE-20260101-002` (second interview, Jan 1 2026)
- `SOURCE-20260215-042` (42nd source ingested Feb 15 2026)

**Storage:** `01_sources/SOURCE-YYYYMMDD-NNN.md`

**Content:** Interview transcripts, observational notes, vendor-supplied data, metadata about collection method and date.

---

### 2. CLAIM-* (Extracted Assertions)

**Format:** `CLAIM-YYYYMMDD-NNN`

- `YYYY` = year  
- `MM` = month  
- `DD` = day of claim extraction  
- `NNN` = zero-padded sequence (001–999 per day)

**Examples:**
- `CLAIM-20260101-001` (first claim extracted, Jan 1 2026)
- `CLAIM-20260215-089` (89th claim extracted Feb 15 2026)

**Storage:** `02_claims/CLAIM-YYYYMMDD-NNN.md`

**Content:** Hypothesis, supporting quote(s) from SOURCE-*, validation method, expires_on date (if applicable).

---

### 3. RUN-* (Framework Application)

**Format:** `RUN-YYYYMMDD-<cohort>-<framework>-NNN`

- `YYYYMMDD` = date of run execution  
- `<cohort>` = canonical cohort slug (lowercase, underscores or hyphens)  
- `<framework>` = framework abbreviation (`do`, `say`, `value`, `kano`, `kawakita`)  
- `NNN` = zero-padded sequence (001–999 per day per cohort per framework)

**Valid Cohorts:**
- `insurer`
- `patient_unknown_symptom`

**Valid Frameworks:**
- `do`
- `say`
- `value`
- `kano`
- `kawakita`

**Examples:**
- `RUN-20260223-insurer-do-001` (first DO run on insurer cohort, Feb 23 2026)
- `RUN-20260223-patient_unknown_symptom-kawakita-001` (first Kawakita run on patient cohort, Feb 23 2026)
- `RUN-20260223-insurer-kano-001` (first Kano run on insurer cohort, Feb 23 2026)

**Storage:** `03_framework_runs/<framework>/<stage>/RUN-YYYYMMDD-<cohort>-<framework>-NNN.md`

**Content:** Input claims (CLAIM-* IDs), framework outputs, synthesis notes, reviewer comments.

---

### 4. PERSONA-* (Synthesized Identity)

**Format:** `PERSONA-<cohort>-NNN-<slug>`

- `<cohort>` = canonical cohort slug  
- `NNN` = zero-padded sequence (001–999 per cohort)  
- `<slug>` = human-readable descriptor (lowercase, hyphens, max 40 chars)

**Examples:**
- `PERSONA-insurer-001-behavior-validation-analyst`
- `PERSONA-insurer-002-confidence-governance-executive`
- `PERSONA-patient_unknown_symptom-001-urgency-driven-navigator`

**Storage:** `04_personas/<cohort>/PERSONA-<cohort>-NNN-<slug>.md`

**Content:** DO/SAY/VALUE synthesis, Kano chart, Kawakita clusters, demographics, behaviors, pain points, evidence chain (RUN-* references).

---

### 5. CLUSTER-* (Meta-Grouping)

**Format:** `CLUSTER-<cohort>-NNN-<slug>`

- `<cohort>` = canonical cohort slug  
- `NNN` = zero-padded sequence (001–999 per cohort)  
- `<slug>` = cluster label (lowercase, hyphens)

**Examples:**
- `CLUSTER-insurer-001-evidence-confidence-control`
- `CLUSTER-patient_unknown_symptom-001-continuity-under-uncertainty`

**Storage:** `05_synthesis/clusters/CLUSTER-<cohort>-NNN-<slug>.md`

**Content:** Member list (PERSONA-* IDs), unifying characteristics, frequency distribution, cross-framework patterns.

---

## Validation Rules

### Filename Compliance
- File extension is always `.md` (Markdown).
- No spaces; use hyphens.
- Case is lowercase (except in metadata headers).
- ID must match the filename exactly.

### Mandatory Metadata
Every record must include a YAML frontmatter header. While specific fields vary by type (see `00_rules/templates/`), all must contain tracking identifiers.

**Example for Persona:**
```yaml
---
id: PERSONA-insurer-001-slug
cohort: insurer         # or both
version: 1
status: draft | review | approved
last_reviewed: 2026-02-23
---
```

**Common Fields across types:**
- `id`: Must match filename exactly.
- `version`: Numeric or semantic version.
- `cohort` / `applies_to`: `insurer`, `patient_unknown_symptom`, or `both`.
- `status` / `review_status`: Lifecycle stage.

### Cross-Reference Integrity
- CLAIM must cite SOURCE-* IDs (backreference).
- RUN must cite CLAIM-* IDs (input manifest).
- PERSONA must cite RUN-* IDs (synthesis basis).
- CLUSTER must cite PERSONA-* IDs (membership).

Dangling references are errors.

---

## Storage Guarantees

| Tier | ID Family | Location | Content Type | Lifespan |
|------|-----------|----------|--------------|----------|
| 01_sources | SOURCE-* | `01_sources/` | Raw interview, vendor data | Permanent |
| 02_claims | CLAIM-* | `02_claims/` | Hypothesis + evidence link | Until expires_on |
| 03_framework_runs | RUN-* | `03_framework_runs/<fw>/<st>/` | Framework application output | Permanent (audit trail) |
| 04_personas | PERSONA-* | `04_personas/<cohort>/` | Synthesized profile | Version-tracked |
| 05_synthesis | CLUSTER-* | `05_synthesis/clusters/` | Meta-group | Version-tracked |
| 05_synthesis | (derived) | `05_synthesis/` | Cross-cohort analyses | Permanent |
| 06_audit | (logs) | `06_audit/` | Lineage, validation logs | Permanent |

---

## Canonical Cohorts

### 1. insurer
- **Context:** Insurance decision-makers, claims processors, medical directors.
- **Use case:** Understand workflow, risk assessment, cost constraints.

### 2. patient_unknown_symptom
- **Context:** Patients with undiagnosed or unclear conditions.
- **Use case:** Capture diagnostic journey, uncertainty tolerance, decision criteria.

---

## File Organization by Tier

### `00_rules/templates/`
- Store `.md` template stubs here (not instantiated records).
- Names follow `*_template.md` convention (e.g., `persona_template.md`).

### `01_sources/`
- One file per source: `SOURCE-YYYYMMDD-NNN.md`
- May reference external links (URL, file path, etc.) in metadata.

### `02_claims/`
- One file per claim: `CLAIM-YYYYMMDD-NNN.md`
- Always link to parent SOURCE-* (usually 1:1, but can be 1:N for synthesized claims).

### `03_framework_runs/`
- One file per framework run: `03_framework_runs/<framework>/<stage>/RUN-...md`
- Nested by `<framework>` (e.g., `do`, `say`, `value`, `kano`, `kawakita`) and `<stage>` (`raw`, `intermediate`, `final`).

### `04_personas/`
- PERSONA-* files: `04_personas/<cohort>/PERSONA-...md`
- Grouped by cohort directory (e.g., `insurers/`, `patients_unknown_symptom/`).

### `05_synthesis/`
- CLUSTER-* files: `05_synthesis/clusters/CLUSTER-...md`
- Derived analyses, meta-patterns, cross-cohort summaries.
- No strict ID format; use descriptive names: `cross-cohort-decision-criteria.md`, `kano-aggregate-insurer.md`.

### `06_audit/`
- Validation logs: `audit-lineage-YYYYMMDD.md`
- Change logs: `changelog-PERSONA-insurer-001.md`
- Evidence chains: `evidence-chain-CLAIM-20260101-001.md`

---

## Determinism and Sortability

All IDs are designed to be:

1. **Deterministic:** The same input always produces the same ID (date + sequence).
2. **Sortable:** Lexicographic sort matches chronological and hierarchical order.
3. **Immutable:** Once assigned, an ID never changes.

Example sort order:
```
SOURCE-20260101-001
SOURCE-20260101-002
CLAIM-20260101-001
RUN-20260223-insurer-do-001
PERSONA-insurer-001-behavior-validation-analyst
CLUSTER-insurer-001-evidence-confidence-control
```

---

## Enforcement and Governance

- **Validation:** Every record created must pass a validation check (see `rules.md`).
- **Review:** Records in draft must move to "approved" before synthesis.
- **Archival:** Expired claims are moved to `06_audit/` with a lineage trace.
- **Refresh:** All personas are version-tracked; superseded versions are preserved in `06_audit/`.

---

## Migration and Legacy Handling

If legacy records exist outside this tree:
1. Assign a new SOURCE-* ID.
2. Create a bridge file in `06_audit/` documenting the origin and re-ingestion.
3. Delete the legacy file.

---

## Contact and Questions

For questions on naming, structure, or governance, refer to:
- `rules.md` — Ethics and refresh cycles.
- `.sisyphus/notepads/synthetic-personas-insurer-patient/learnings.md` — Captured conventions.
- `.sisyphus/plans/synthetic-personas-insurer-patient.md` — Implementation plan.

---

**End of Naming Manifest**
