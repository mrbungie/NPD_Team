---
id: RUN-20260225-insurer-do-001
framework: do
cohort: insurer
inputs:
  - CLAIM-20260225-013
  - CLAIM-20260225-014
  - CLAIM-20260225-015
  - CLAIM-20260225-034
  - CLAIM-20260225-038
  - CLAIM-20260225-040
  - CLAIM-20260225-041
  - CLAIM-20260225-044
  - CLAIM-20260225-045
raw_output:
intermediate_output:
final_output: inline
run_date: 2026-02-25
prompt_fingerprint: grounded-do-v1-20260225
---

# Framework Run (Final): DO - insurer

## Purpose
Extend the canonical insurer DO behavior map with interview-derived procurement/adoption behaviors (integration, monitoring, and veto patterns).

## Final Output
Canonical DO behaviors:

1. Policy/procurement decisions rely on national HTA appraisal processes and recommendations (PNHTA-DM). (Claim: CLAIM-20260225-013)
2. AI/DTx evaluation requires outcome measurement and privacy-compliant health-data utilization expectations. (Claim: CLAIM-20260225-015)
3. Interoperability fit must align with EDS/FSE and national system constraints. (Claim: CLAIM-20260225-014)
4. Proposals commonly stall at interoperability explanation/demonstration and DPIA-related clarity; integration feasibility is treated as the product. (Claim: CLAIM-20260225-034)
5. Procurement and scale-out stall when outcome ownership and credible monitoring plans cannot be committed to; manual reporting burden is a failure mode. (Claim: CLAIM-20260225-038)
6. Pilots are evaluated for cross-Region scale paths; leadership vetoes one-off local integrations. (Claim: CLAIM-20260225-040)
7. Operational adoption fails when pilots introduce manual reconciliation/training burden or unreliable data flow. (Claim: CLAIM-20260225-041)
8. Ops teams prioritize workflow protection and resist manual steps; limited testing capacity for clinical-system integrations is a recurring breakdown. (Claims: CLAIM-20260225-044, CLAIM-20260225-045)
