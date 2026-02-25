# Synthesis: insurer (Grounded)

This synthesis aggregates evidence-grounded claims and framework runs into a cross-persona view of how Italy/SSN procurement and governance stakeholders behave, what they say, and what they value when evaluating and adopting digital health solutions.

## Evidence Base
- Sources: `analysis/persona_db/01_sources/` (Italy anchors such as SOURCE-20260225-006, SOURCE-20260225-007, SOURCE-20260225-013; interview variants SOURCE-20260225-023 through SOURCE-20260225-030)
- Claims: `analysis/persona_db/02_claims/` (Italy anchors such as CLAIM-20260225-013, CLAIM-20260225-014, CLAIM-20260225-015; interview-derived procurement claims CLAIM-20260225-032 through CLAIM-20260225-047)
- Runs: `analysis/persona_db/03_framework_runs/` (IDs: RUN-20260224-insurer-* and RUN-20260225-insurer-*)

## Canonical Journey (DO)
- Policy and procurement decisions are supported by national HTA appraisal processes and recommendations (PNHTA-DM). (Claim: CLAIM-20260225-013)
- Evaluation (especially for AI/DTx) requires outcome measurement criteria and privacy-compliant health-data utilization expectations. (Claim: CLAIM-20260225-015)
- Adoption must align with national interoperability/data backbone constraints (EDS interaction with FSE and national systems). (Claim: CLAIM-20260225-014)
- Governance and DPIA readiness (controller/processor mapping, lawful basis, auditability) is a frequent stop condition and hidden veto. (Claims: CLAIM-20260225-033, CLAIM-20260225-046)
- Procurement and scale-out often stall when outcome ownership and credible monitoring plans cannot be committed to (or require manual reporting burden). (Claim: CLAIM-20260225-038)
- Operational feasibility fails when pilots add manual reconciliation/training burden or unreliable data flow; workflow impact mapping is a decision artifact. (Claims: CLAIM-20260225-041, CLAIM-20260225-047)

## Canonical Language (SAY)
- "HTA-ready evidence dossier" framing (appraisal-grade artifacts, not marketing claims). (Claim: CLAIM-20260225-013)
- "Outcome measurement + privacy compliance" language (especially for AI/DTx). (Claim: CLAIM-20260225-015)
- "Interoperable with FSE/EDS" as a scaling constraint across Regions. (Claim: CLAIM-20260225-014)
- "Integration is the project" (explicit data flows, standards mapping, testability). (Claims: CLAIM-20260225-034, CLAIM-20260225-035)
- "Governance pack" (DPIA inputs, controller/processor mapping, audit logging) as procurement accelerant. (Claims: CLAIM-20260225-046, CLAIM-20260225-047)

## Value Logic (Kano)
Basics
- Procurement/HTA fit: evidence artifacts that support appraisal and procurement recommendations. (Claim: CLAIM-20260225-013)
- Interoperability fit: alignment with EDS/FSE and national system constraints. (Claim: CLAIM-20260225-014)

Performance
- Outcome measurement + privacy-compliant health-data utilization criteria (especially for AI/DTx). (Claim: CLAIM-20260225-015)

Delighters
- Reduced integration burden while maintaining interoperability and measurement rigor. (Claims: CLAIM-20260225-014, CLAIM-20260225-015)
- Pre-built connectors plus rollout/measurement playbooks that make scale-out predictable. (Claim: CLAIM-20260225-043)

## Persona Set (v1)
- Evidence + ROI Gating cluster: `CLUSTER-insurer-001-evidence-and-roi-gating`
- Operational + Integration Burden cluster: `CLUSTER-insurer-002-operational-and-integration-burden`

## Open Hypotheses to Validate Next
- What minimum evidence pack is sufficient for Italy/SSN procurement and HTA stakeholders (and how it differs by Region/organization type). (Claim: CLAIM-20260225-013)
