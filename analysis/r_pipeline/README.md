# R Pipeline (Two-Phase)

This pipeline answers six hypotheses/questions with numeric outputs using official sources discovered from DeepWiki context:
- Eurostat (EHIS + SHA)
- Orphadata OpenAPI metadata surface

No keyword-count text charts are used.

## Phases

1. **Data Querying** (`scripts/phase1`): six independent question scripts (`q1`..`q6`) that query numeric APIs and generate CSV outputs.
2. **Plotting + Tabling** (`scripts/phase2`): six independent scripts that read phase-1 outputs and generate plots and tables.

## Run

Use the runner from repo root:

```bash
bash ./analysis/r_pipeline/run_r_pipeline.sh --phase all
```

Other modes:

- `--phase phase1`
- `--phase phase2`
- `--strict` (stop on first failing script)

Artifacts are written to:

- `analysis/r_pipeline/outputs/phase1`
- `analysis/r_pipeline/outputs/phase2/plots`
- `analysis/r_pipeline/outputs/phase2/tables`
- `analysis/r_pipeline/logs`
