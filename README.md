# NPD Team - Synthetic Persona Repository

This repository contains the evidence-grounded synthetic persona workflow for two cohorts:
- `insurer`
- `patient_unknown_symptom`

The authoritative data pipeline lives under `analysis/persona_db` and follows the sequence:
sources -> claims -> framework runs -> personas -> synthesis -> audit.

## Repository Structure

```text
.
|-- ai_methodology.md
|-- methodology_translated.md
|-- methodology_sources/
|   |-- Guide to Synthetic Personas (1).pdf
|   `-- Captura de pantalla ... .png
|-- analysis/
|   |-- final_analysis_summary.md
|   |-- potential_extra_data_analysis.md
|   `-- persona_db/
|       |-- 00_rules/
|       |   |-- rules.md
|       |   |-- naming_manifest.md
|       |   `-- templates/
|       |-- 01_sources/
|       |-- 02_claims/
|       |-- 03_framework_runs/
|       |   |-- do/{raw,intermediate,final}/
|       |   |-- say/{raw,intermediate,final}/
|       |   |-- kawakita/{raw,intermediate,final}/
|       |   `-- value/{raw,intermediate,final}/
|       |-- 04_personas/
|       |   |-- insurer/
|       |   `-- patient_unknown_symptom/
|       |-- 05_synthesis/
|       |   |-- clusters/
|       |   |-- synthesis-insurer.md
|       |   `-- synthesis-patient_unknown_symptom.md
|       `-- 06_audit/
`-- .sisyphus/
    |-- boulder.json
    |-- plans/
    |-- notepads/
    |-- evidence/
    `-- drafts/
```

## Key Directories

- `analysis/persona_db/00_rules`: governance rules, naming constraints, and templates.
- `analysis/persona_db/01_sources`: external evidence records (`SOURCE-*`).
- `analysis/persona_db/02_claims`: atomic, cohort-scoped claims (`CLAIM-*`).
- `analysis/persona_db/03_framework_runs`: DO/SAY/Kawakita/Kano processing runs (`RUN-*`).
- `analysis/persona_db/04_personas`: synthesized personas per cohort (`PERSONA-*`).
- `analysis/persona_db/05_synthesis`: cross-persona synthesis and cluster outputs.
- `analysis/persona_db/06_audit`: audit and QA artifacts.

## Conventions

- Use lowercase folder names with underscores where needed.
- Keep numbered top-level stages (`00_*` to `06_*`) under `analysis/persona_db`.
- Keep records in their canonical folders (do not place persona records outside `analysis/persona_db`).

## Working Notes

- `ai_methodology.md` is the operational guide for producing and validating persona artifacts.
- `methodology_translated.md` and files in `methodology_sources/` provide source methodology context.
- `.sisyphus/` contains planning and execution notes used during development.
