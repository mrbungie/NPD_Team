# Synthesis: insurer (Grounded)

This synthesis aggregates evidence-grounded claims and framework runs into a cross-persona view of how Italy/SSN procurement and governance stakeholders behave, what they say, and what they value when evaluating and adopting digital health solutions.

## Evidence Base
- Sources: `analysis/persona_db/01_sources/` (Italy anchors such as SOURCE-20260225-006, SOURCE-20260225-007, SOURCE-20260225-013)
- Claims: `analysis/persona_db/02_claims/` (Italy anchors such as CLAIM-20260225-013, CLAIM-20260225-014, CLAIM-20260225-015)
- Runs: `analysis/persona_db/03_framework_runs/` (IDs: RUN-20260224-insurer-*)

## Canonical Journey (DO)
- Policy and procurement decisions are supported by national HTA appraisal processes and recommendations (PNHTA-DM). (Claim: CLAIM-20260225-013)
- Evaluation (especially for AI/DTx) requires outcome measurement criteria and privacy-compliant health-data utilization expectations. (Claim: CLAIM-20260225-015)
- Adoption must align with national interoperability/data backbone constraints (EDS interaction with FSE and national systems). (Claim: CLAIM-20260225-014)

## Canonical Language (SAY)
- "HTA-ready evidence dossier" framing (appraisal-grade artifacts, not marketing claims). (Claim: CLAIM-20260225-013)
- "Outcome measurement + privacy compliance" language (especially for AI/DTx). (Claim: CLAIM-20260225-015)
- "Interoperable with FSE/EDS" as a scaling constraint across Regions. (Claim: CLAIM-20260225-014)

## Value Logic (Kano)
Basics
- Procurement/HTA fit: evidence artifacts that support appraisal and procurement recommendations. (Claim: CLAIM-20260225-013)
- Interoperability fit: alignment with EDS/FSE and national system constraints. (Claim: CLAIM-20260225-014)

Performance
- Outcome measurement + privacy-compliant health-data utilization criteria (especially for AI/DTx). (Claim: CLAIM-20260225-015)

Delighters
- Reduced integration burden while maintaining interoperability and measurement rigor. (Claims: CLAIM-20260225-014, CLAIM-20260225-015)

## Persona Set (v1)
- Evidence + ROI Gating cluster: `CLUSTER-insurer-001-evidence-and-roi-gating`
- Operational + Integration Burden cluster: `CLUSTER-insurer-002-operational-and-integration-burden`

## Open Hypotheses to Validate Next
- What minimum evidence pack is sufficient for Italy/SSN procurement and HTA stakeholders (and how it differs by Region/organization type). (Claim: CLAIM-20260225-013)
