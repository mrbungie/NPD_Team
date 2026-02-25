# R Pipeline Results Summary

This report summarizes the six numeric questions/hypotheses, the key values, and where to find each chart/table.

Data backbone:
- Eurostat EHIS (`hlth_ehis_un1e`, `hlth_ehis_un2e`)
- Eurostat SHA (`hlth_sha11_hf`)
- Orphadata OpenAPI metadata (`api.orphadata.com/openapi.json`)

Note: generated artifacts live under `analysis/r_pipeline/outputs/` and are not tracked in git.

## Q1 - Access pressure vs system outcome proxy

Question: did waiting-list unmet need and health expenditure (% GDP) move in the same direction between 2014 and 2019?

Key numbers:
- Unmet need due to waiting list: 29.9% (2014) -> 25.2% (2019)
- Health spending (% GDP): 8.86 (2014) -> 8.62 (2019)

Artifacts:
- Plot: `analysis/r_pipeline/outputs/phase2/plots/q1_access_outcome_bars.png`
- Table CSV: `analysis/r_pipeline/outputs/phase2/tables/q1_access_outcome_summary.csv`
- Table MD: `analysis/r_pipeline/outputs/phase2/tables/q1_access_outcome_summary.md`

## Q2 - Diagnostic odyssey complexity proxy by age

Question: which age groups show higher average unmet burden across medical/dental/mental/prescribed-medicine services?

Key numbers (complexity proxy mean, 2019):
- Highest: Y45-54 = 7.975
- Then: Y55-64 = 7.375
- Lowest: Y15-24 = 4.925

Artifacts:
- Plot: `analysis/r_pipeline/outputs/phase2/plots/q2_complexity_heatmap_age_service.png`
- Table CSV: `analysis/r_pipeline/outputs/phase2/tables/q2_complexity_proxy_by_age.csv`
- Table MD: `analysis/r_pipeline/outputs/phase2/tables/q2_complexity_proxy_by_age.md`

## Q3 - Handoff risk hotspots by age

Question: which age groups are above-average in combined handoff risk (waiting-list unmet + service unmet)?

Key numbers (index):
- Highest hotspot: Y45-54 = 1.605
- Next: Y55-64 = 1.301
- Lowest: Y15-24 = -3.727

Artifacts:
- Plot: `analysis/r_pipeline/outputs/phase2/plots/q3_handoff_hotspots_by_age.png`
- Table CSV: `analysis/r_pipeline/outputs/phase2/tables/q3_handoff_risk_hotspots_by_age.csv`
- Table MD: `analysis/r_pipeline/outputs/phase2/tables/q3_handoff_risk_hotspots_by_age.md`

## Q4 - Equity gap by education

Question: how large is unmet-need inequality between low and high education groups, and did it improve?

Key numbers:
- Gap (low edu - high edu): 7.6 pp (2014) -> 6.6 pp (2019)

Artifacts:
- Plot (levels): `analysis/r_pipeline/outputs/phase2/plots/q4_unmet_by_education_lines.png`
- Plot (gap): `analysis/r_pipeline/outputs/phase2/plots/q4_equity_gap_bars.png`
- Table CSV: `analysis/r_pipeline/outputs/phase2/tables/q4_equity_gap_by_time.csv`
- Table MD: `analysis/r_pipeline/outputs/phase2/tables/q4_equity_gap_by_time.md`

## Q5 - Financing mix as procurement-readiness signal

Question: what is the current financing mix and how stable is it over time?

Key numbers (latest year 2024):
- Public/compulsory (HF1): 74.25%
- Voluntary (HF2): 3.44%
- Out-of-pocket (HF3): 22.31%

Artifacts:
- Plot: `analysis/r_pipeline/outputs/phase2/plots/q5_financing_shares_stacked.png`
- Table CSV (latest): `analysis/r_pipeline/outputs/phase2/tables/q5_financing_shares_latest.csv`
- Table MD (latest): `analysis/r_pipeline/outputs/phase2/tables/q5_financing_shares_latest.md`

## Q6 - Data readiness for retrieval/routing

Question: is there enough structured numerical coverage to support analytics/routing work?

Key numbers:
- EHIS UN1E observations: 528
- EHIS UN2E observations: 720
- SHA observations (subset): 39
- Distinct age groups (UN1E): 11
- Distinct service types (UN2E): 5
- Distinct years (SHA subset): 13
- Orphadata OpenAPI paths: 32

Artifacts:
- Plot: `analysis/r_pipeline/outputs/phase2/plots/q6_data_readiness_metrics.png`
- Table CSV: `analysis/r_pipeline/outputs/phase2/tables/q6_data_readiness_metrics.csv`
- Table MD: `analysis/r_pipeline/outputs/phase2/tables/q6_data_readiness_metrics.md`

## Run Again

```bash
bash ./analysis/r_pipeline/run_r_pipeline.sh --phase all --strict
```
