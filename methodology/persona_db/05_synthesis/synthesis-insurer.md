# Synthesis: insurer (Grounded)

This synthesis aggregates evidence-grounded claims and framework runs into a cross-persona view of how health insurers (and adjacent purchasers) behave, what they say, and what they value in digital health purchasing and prior-authorization modernization.

## Evidence Base
- Sources: `methodology/persona_db/01_sources/` (IDs: SOURCE-20260224-008 through SOURCE-20260224-014)
- Claims: `methodology/persona_db/02_claims/` (IDs: CLAIM-20260224-016 through CLAIM-20260224-030)
- Runs: `methodology/persona_db/03_framework_runs/` (IDs: RUN-20260224-insurer-*)

## Canonical Journey (DO)
- Purchasing is structured, survey-informed, and tied to review cycles. (Claim: CLAIM-20260224-017)
- Risk-sharing contracts (performance-based) are used or planned. (Claim: CLAIM-20260224-018)
- Operational capacity is a constraint; contract adjudication and reporting can be heavy. (Claim: CLAIM-20260224-021)
- Regulatory modernization requires payer FHIR APIs and standardized prior auth workflows. (Claims: CLAIM-20260224-025, CLAIM-20260224-026)
- AI adoption in utilization review increases both automation potential and harm risk, requiring governance. (Claim: CLAIM-20260224-027)

## Canonical Language (SAY)
- "Measurable clinical and economic outcomes" is the dominant gate. (Claim: CLAIM-20260224-016)
- Strong distrust of vendor-built ROI analyses; validation is hard internally. (Claim: CLAIM-20260224-020)
- "Point solution fatigue" language drives anti-fragmentation posture. (Claim: CLAIM-20260224-022)
- PBC is framed as expected rather than experimental. (Claim: CLAIM-20260224-030)

## Value Logic (Kano)
Basics
- Compliance alignment with required payer APIs and prior auth operational requirements. (Claims: CLAIM-20260224-025, CLAIM-20260224-026)
- Governance for AI-supported decisions to prevent harm modes. (Claim: CLAIM-20260224-028)

Performance
- Auditability of ROI and validation of claims. (Claim: CLAIM-20260224-020)
- Shift from engagement metrics to clinical/financial outcomes measurement. (Claim: CLAIM-20260224-019)

Delighters
- Burden reduction without sacrificing compliance or increasing harms. (Claim: CLAIM-20260224-028)

## Persona Set (v1)
- Evidence + ROI Gating cluster: `CLUSTER-insurer-001-evidence-and-roi-gating`
- Operational + Integration Burden cluster: `CLUSTER-insurer-002-operational-and-integration-burden`

## Open Hypotheses to Validate Next
- How much of purchasing skepticism is driven by lack of access to high-fidelity outcomes data vs. internal analytics capacity constraints (requires direct purchaser interviews). (Claim: CLAIM-20260224-020)
