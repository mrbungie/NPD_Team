# Full History and Traceability (Empathy + Journey Report)

This file documents what the final report was built from, how to reproduce its numbers, and where the underlying sources live.

Final report:
- [`analysis/final_empathy_journey_report.md`](analysis/final_empathy_journey_report.md)

## 1) Inputs (Files Used)

Primary synthesis inputs:
- [`analysis/final_analysis_summary.md`](analysis/final_analysis_summary.md)
- [`analysis/business_maker_digest.md`](analysis/business_maker_digest.md)

Interview-derived quantified distributions and quote pools:
- [`analysis/interview_quant/patient_counts.csv`](analysis/interview_quant/patient_counts.csv)
- [`analysis/interview_quant/stakeholder_counts.csv`](analysis/interview_quant/stakeholder_counts.csv)
- [`analysis/interview_quant/patient_quote_pool.md`](analysis/interview_quant/patient_quote_pool.md)
- [`analysis/interview_quant/stakeholder_quote_pool.md`](analysis/interview_quant/stakeholder_quote_pool.md)

Quantitative overlay input (national-level proxies):
- [`analysis/r_pipeline/report_summary.md`](analysis/r_pipeline/report_summary.md)

Quantitative reproduction pipeline:
- [`analysis/r_pipeline/run_r_pipeline.sh`](analysis/r_pipeline/run_r_pipeline.sh)
- Phase 1 query scripts:
  - [`analysis/r_pipeline/scripts/phase1/query_q1_regional_access_outcome.R`](analysis/r_pipeline/scripts/phase1/query_q1_regional_access_outcome.R)
  - [`analysis/r_pipeline/scripts/phase1/query_q2_diagnostic_odyssey_complexity.R`](analysis/r_pipeline/scripts/phase1/query_q2_diagnostic_odyssey_complexity.R)
  - [`analysis/r_pipeline/scripts/phase1/query_q3_handoff_hotspots.R`](analysis/r_pipeline/scripts/phase1/query_q3_handoff_hotspots.R)
  - [`analysis/r_pipeline/scripts/phase1/query_q4_equity_variance.R`](analysis/r_pipeline/scripts/phase1/query_q4_equity_variance.R)
  - [`analysis/r_pipeline/scripts/phase1/query_q5_procurement_readiness.R`](analysis/r_pipeline/scripts/phase1/query_q5_procurement_readiness.R)
  - [`analysis/r_pipeline/scripts/phase1/query_q6_chatbot_retrieval_quality.R`](analysis/r_pipeline/scripts/phase1/query_q6_chatbot_retrieval_quality.R)
- Phase 2 plotting/tabling scripts:
  - [`analysis/r_pipeline/scripts/phase2/plot_table_q1_regional_access_outcome.R`](analysis/r_pipeline/scripts/phase2/plot_table_q1_regional_access_outcome.R)
  - [`analysis/r_pipeline/scripts/phase2/plot_table_q2_diagnostic_odyssey_complexity.R`](analysis/r_pipeline/scripts/phase2/plot_table_q2_diagnostic_odyssey_complexity.R)
  - [`analysis/r_pipeline/scripts/phase2/plot_table_q3_handoff_hotspots.R`](analysis/r_pipeline/scripts/phase2/plot_table_q3_handoff_hotspots.R)
  - [`analysis/r_pipeline/scripts/phase2/plot_table_q4_equity_variance.R`](analysis/r_pipeline/scripts/phase2/plot_table_q4_equity_variance.R)
  - [`analysis/r_pipeline/scripts/phase2/plot_table_q5_procurement_readiness.R`](analysis/r_pipeline/scripts/phase2/plot_table_q5_procurement_readiness.R)
  - [`analysis/r_pipeline/scripts/phase2/plot_table_q6_chatbot_retrieval_quality.R`](analysis/r_pipeline/scripts/phase2/plot_table_q6_chatbot_retrieval_quality.R)

Interview schema rules relevant to synthetic answers:
- [`analysis/persona_db/03_framework_runs/interviews/interview_method_tool.md`](analysis/persona_db/03_framework_runs/interviews/interview_method_tool.md)
- [`analysis/persona_db/03_framework_runs/interviews/templates/interview_response_template.md`](analysis/persona_db/03_framework_runs/interviews/templates/interview_response_template.md)

## 2) What "Full History" Means Here

This repo has two layers of truth that must never be confused:

1. Claim-backed qualitative synthesis (personas, JTBD, do/say/want patterns)
   - Lives primarily in `analysis/persona_db/` and is surfaced in [`analysis/final_analysis_summary.md`](analysis/final_analysis_summary.md).

2. Numeric overlays (national-level context signals)
   - Lives in the R pipeline outputs and is summarized in [`analysis/r_pipeline/report_summary.md`](analysis/r_pipeline/report_summary.md).

The final report blends both, but keeps them explicitly labeled.

## 3) Reproduce the Numbers

From repo root:

```bash
bash ./analysis/r_pipeline/run_r_pipeline.sh --phase all --strict
```

Outputs are written under `analysis/r_pipeline/outputs/` (intentionally not tracked in git).

## 4) Git Commit References (Recent)

These commits introduced or updated the core inputs (GitHub links):
- `7820133` (final analysis summary quantitative layer): https://github.com/mrbungie/NPD_Team/commit/7820133
- `c74ea13` (business maker digest): https://github.com/mrbungie/NPD_Team/commit/c74ea13
- `528a599` (R pipeline runner/docs): https://github.com/mrbungie/NPD_Team/commit/528a599

If you need exact provenance for any sentence, start at:
- [`analysis/final_analysis_summary.md`](analysis/final_analysis_summary.md) (claim IDs)
- `analysis/persona_db/02_claims/` (the claim file)
- `analysis/persona_db/01_sources/` (the source file)

## 5) Section-to-Source Mapping (How the Final Report Was Written)

The final report sections are written from these inputs:

- Empathy + journey narratives:
  - [`analysis/final_analysis_summary.md`](analysis/final_analysis_summary.md)
  - [`analysis/business_maker_digest.md`](analysis/business_maker_digest.md)

- Quantitative callouts and "numeric overlays":
  - [`analysis/r_pipeline/report_summary.md`](analysis/r_pipeline/report_summary.md)

If you update any of the above, regenerate the R outputs (if numeric changes) and then revise:
- [`analysis/final_empathy_journey_report.md`](analysis/final_empathy_journey_report.md)
