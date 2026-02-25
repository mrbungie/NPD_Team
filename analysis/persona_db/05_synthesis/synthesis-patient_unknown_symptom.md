# Synthesis: patient_unknown_symptom (Grounded)

This synthesis aggregates evidence-grounded claims and framework runs into a cross-persona view of what patients with unknown/unexplained symptoms do, say, and value.

## Evidence Base
- Sources: `analysis/persona_db/01_sources/` (IDs: SOURCE-20260224-001 through SOURCE-20260224-006; plus Italy anchors like SOURCE-20260225-011 and SOURCE-20260225-012)
- Claims: `analysis/persona_db/02_claims/` (IDs: CLAIM-20260224-001 through CLAIM-20260224-015; plus Italy anchors like CLAIM-20260225-011 and CLAIM-20260225-012)
- Runs: `analysis/persona_db/03_framework_runs/` (IDs: RUN-20260224-patient_unknown_symptom-*)

## Canonical Journey (DO)
- New/unfamiliar symptoms trigger self-triage and checking behaviors. (Claim: CLAIM-20260224-004)
- Patients combine symptom checkers with online community support and information seeking. (Claim: CLAIM-20260224-002)
- Follow-through branches into self-treatment, waiting, or seeking care; disclosure to clinicians is inconsistent. (Claim: CLAIM-20260224-005)
- Access friction (stigma, logistics, "normal" results, affordability) changes persistence and behavior. (Claim: CLAIM-20260224-009)
- Italy/SSN record access is structured around FSE 2.0 with explicit nationwide diffusion/omogeneita/accessibilita and cross-region interoperability goals. (Claims: CLAIM-20260225-011, CLAIM-20260225-012)

## Canonical Language (SAY)
- Peer similarity seeking and uncertainty talk are central ("This is happening to me" / "Is this happening to you?"). (Claim: CLAIM-20260224-003)
- Users can feel unsettled or alarmed by risk-averse triage and serious diagnosis suggestions. (Claim: CLAIM-20260224-008)
- Legitimacy-seeking language appears when stigma/dismissal is experienced ("None of us are lying"). (Claim: CLAIM-20260224-010)

## Value Logic (Kano)
Basics
- Guidance that reduces uncertainty without unnecessarily alarming escalation. (Claim: CLAIM-20260224-008)

Performance
- Personalization and nuanced symptom capture. (Claim: CLAIM-20260224-006)
- Navigation support for friction points (logistics, normal results, affordability). (Claim: CLAIM-20260224-009)

Delighters
- Clinician-ready outputs to shorten diagnostic delays and improve routing. (Claim: CLAIM-20260224-014)
- Legitimacy support and language that helps patients feel believed. (Claim: CLAIM-20260224-010)

## Persona Set (v1)
- Uncertainty Management cluster: `CLUSTER-patient_unknown_symptom-001-uncertainty-management`
- Legitimacy + Access Friction cluster: `CLUSTER-patient_unknown_symptom-002-legitimacy-and-access-friction`

## Open Hypotheses to Validate Next
- Whether FSE 2.0 cross-region interoperability and "single access" actually reduces repeat-history burden in unknown-symptom journeys, or whether patients still experience documentation gaps in practice. (Claim: CLAIM-20260225-012)
