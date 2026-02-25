---
title: AI Operational Guide - Evidence-Grounded Synthetic Personas
version: 1.0.0
last_updated: 2026-02-24
---

# AI Operational Guide: Evidence-Grounded Synthetic Personas (Health App)

This document tells an AI agent exactly how to build synthetic personas for this project without falling into circular reasoning.

## Non-Negotiable Rule
Do NOT research the methodology.
Research the PEOPLE (and organizations) the methodology is applied to.

If your "evidence" is only internal docs like `STRUCTURE.md` or generic UX/framework articles, you are doing it wrong.

## Deliverables (What you must produce)
You must produce and keep consistent:

1. Pre-gathering interview method tool
- `analysis/persona_db/03_framework_runs/interviews/interview_method_tool.md`

2. Evidence records
- `analysis/persona_db/01_sources/SOURCE-*.md`
- `analysis/persona_db/02_claims/CLAIM-*.md`

3. Framework applications
- `analysis/persona_db/03_framework_runs/do/**/RUN-*.md`
- `analysis/persona_db/03_framework_runs/say/**/RUN-*.md`
- `analysis/persona_db/03_framework_runs/kawakita/**/RUN-*.md`
- `analysis/persona_db/03_framework_runs/value/**/RUN-*.md` (Kano)

4. Personas
- `analysis/persona_db/04_personas/insurer/PERSONA-*.md`
- `analysis/persona_db/04_personas/patient_unknown_symptom/PERSONA-*.md`

5. Synthesis
- `analysis/persona_db/05_synthesis/synthesis-insurer.md`
- `analysis/persona_db/05_synthesis/synthesis-patient_unknown_symptom.md`
- `analysis/persona_db/05_synthesis/clusters/CLUSTER-*.md`

Governance rules live in `analysis/persona_db/00_rules/rules.md`.

---

## 1) The Failure Mode to Prevent (Circular Reasoning)

Circular reasoning happens when you:
- read internal methodology docs,
- restate them as if they are evidence about users,
- and then "derive" personas from that.

### Bad vs Good Example

BAD (circular):
"Patients with unknown symptoms value clarity and reassurance." (Source: `STRUCTURE.md`)

GOOD (grounded):
"Symptom checker users report varied affective responses and can feel alarmed by risk-averse triage and serious suggestions." (Source: `SOURCE-20260224-003`) -> (Claim: `CLAIM-20260224-008`)

Test:
- If removing internal docs breaks your claim set, your persona_db is not grounded.

---

## 2) Cohort Definitions (You are researching two different worlds)

Do not generalize across cohorts. Keep separate claims and runs per cohort.

### Cohort A: `patient_unknown_symptom`
People experiencing persistent, unclear, or unexplained symptoms where causes and treatments are uncertain.

Typical journey characteristics:
- New/unfamiliar symptom onset triggers self-triage.
- Ongoing uncertainty may turn into repeated consultations and "no name" periods.
- Peer similarity seeking and legitimacy concerns can be central.

### Cohort B: `insurer`
Italian payer and health-system decision stakeholders (public and private) and their internal roles involved in adopting solutions.

Typical journey characteristics:
- Structured purchasing and review cycles.
- Outcomes proof and auditability requirements.
- Compliance constraints in Italian/EU context (SSN and regional workflows, GDPR/EU health-data interoperability requirements).
- Risk governance for AI used in utilization review.

Localization rule:
- This project is Italy-focused. Use Italy/EU evidence as primary. Treat US-only policy sources as non-authoritative for final claims.

---

## 3) Evidence Gathering (What counts as evidence)

Evidence must be external to this repo.

### Preferred Source Types

HIGH confidence (use whenever possible):
- Peer-reviewed articles (PubMed / PMC)
- Government publications and regulations (Ministero della Salute, AGENAS, ISS, ISTAT, Gazzetta Ufficiale, EU regulations)
- Large-N surveys (>= 300) with clear methodology

MEDIUM confidence:
- Preprints (medRxiv)
- Consulting reports with clear methods
- Reputable trade reporting summarizing primary surveys (use carefully)

LOW confidence:
- Blogs, anecdotal threads, marketing pages
- Use only as hypothesis seeds; do not let them drive personas without stronger support

### Where to look (recommended)

Patients:
- Symptom checker usage patterns (JMIR; BMC)
- Online crowdsourcing behavior for poorly understood conditions (PMC)
- Qualitative interviews about legitimacy and access barriers (BMC Health Services Research)
- Diagnostic delay / odyssey framing (peer-reviewed; preprints)

Insurers:
- Italian procurement and commissioning evidence requirements (national/regional health authorities, procurement guidance)
- Regulation driving interoperability and authorization workflows in Italy/EU
- Governance risks in AI-supported health decision systems in EU/Italy context

---

## 4) Confidence Tiers (Required on every CLAIM)

Every claim must have `confidence: High | Medium | Low`.

Definition:
- High: peer-reviewed + government + large-N surveys
- Medium: preprints, credible industry research, secondary reporting
- Low: anecdotal / blog / single thread

---

## 5) Provenance Tags (Required logic for every trait)

Every persona trait must be traceable to claims, and every claim must be traceable to sources.

Use these provenance tags when writing a claim or persona bullet:

1. OBSERVED
- Directly supported by a specific external source.
- Requirement: URL in a `SOURCE-*` record.

2. INFERRED
- Logical deduction built on one or more OBSERVED claims.
- Requirement: explicitly state which OBSERVED claims the inference depends on.

3. ASSUMED
- Gap-fill when no evidence exists.
- Requirement: add `expires_on` and `validation_method` (see `rules.md`).

If you cannot tag it, you cannot write it.

---

## 6) Operational Workflow (Interview Tool -> Source -> Claim -> Run -> Persona)

### Step 6.0: Build the interview method tool just before conducting interviews
Just before conducting interviews for a cohort, define (or update) the interview method tool in `analysis/persona_db/03_framework_runs/interviews/interview_method_tool.md`.

Required setup:
- cohort lock (`insurer` or `patient_unknown_symptom`)
- interview objective and survey question set
- bias and quality guardrails
- synthetic answer generation rules and traceability fields
- mixed response format: structured data answers + free-text interview answers

Survey requirement:
- Use the cohort-specific instrument referenced by the tool file.
- Each answer row must include `question_id`, `question_type`, `claim_refs`, and `source_refs`.
- Each interview answer must include respondent profile with at least `age`, `region`, and `role`.

Non-negotiable:
- You must clearly label outputs as interviews.
- If answers are generated from evidence (not direct respondents), label them as synthetic interview answers.

### Step 6.1: Ingest sources into `01_sources/`
Create one `SOURCE-*` file per external artifact.

Minimum fields:
- `id`, `kind`, `title`, `published_on`, `captured_on`, `url_or_location`, `usage_notes`, `evidence_snippet`

Guidance:
- Evidence snippet should be a direct quote when possible.
- Put scope caveats in `usage_notes` (e.g., pediatric parents -> adult generalization is limited).
- For interview-style source records, include whether it is direct interview evidence or synthetic interview answers generated with the interview method tool.

### Step 6.2: Write atomic claims into `02_claims/`
Claims must be:
- one sentence,
- scoped to one cohort,
- labeled as `claim_type: DO | SAY | VALUE`,
- tagged with confidence,
- backed by `source_refs`.

Anti-slop rule:
- Avoid generic claims ("patients want to be healthy").
- Prefer behavioral specificity ("new/unfamiliar symptoms drive symptom checker use").

### Step 6.3: Apply the framework in `03_framework_runs/`
Runs are the bridge between claims and personas.

Required run types per cohort:
- DO run: canonical behavior map
- SAY run: canonical language themes
- Kawakita run: clusters from SAY fragments
- Kano run: classify VALUE candidates

Each run must list input `CLAIM-*` IDs in frontmatter.

### Step 6.4: Synthesize personas in `04_personas/`
Create exactly 4 personas per cohort for v1 unless evidence forces different segmentation.

Persona rules:
- Every bullet must cite at least one `CLAIM-*`.
- No "life story" fluff; include only decision-relevant structure.
- Do not use protected traits as causal explanations.

### Step 6.5: Produce clusters and syntheses in `05_synthesis/`
Clusters group personas by separating variables.
Syntheses provide cross-persona canonical patterns.

---

## 7) DO / SAY / VALUE Protocol (How to research each layer)

### 7.1 DO protocol (Behavior)
What you are extracting:
- actions, sequences, branches, constraints, and friction.

Signals:
- frequency ("often", "increased", "predictor")
- triggers ("initial occurrence")
- branching behaviors ("search vs self-treat vs seek care")

Patient DO examples (do not invent numbers):
- New/unfamiliar symptoms trigger symptom checker usage. (Source: `SOURCE-20260224-004`)
- People use online communities for information- and support-seeking when uncertain. (Source: `SOURCE-20260224-002`)

Insurer DO examples:
- HTA appraisal processes and recommendations support policy and procurement decisions (PNHTA-DM). (Source: `SOURCE-20260225-006`)
- National interoperability backbone constraints exist via EDS and its interaction with FSE and national systems. (Source: `SOURCE-20260225-013`)

### 7.2 SAY protocol (Language)
What you are extracting:
- repeated phrases, framing, objections, legitimacy language, anxiety language.

Where to look:
- Qualitative studies (interview quotes)
- Large-scale community analysis (topic modeling on forums)
- Purchaser playbooks and survey writeups

Patient SAY examples:
- Similarity seeking and support-seeking language in online communities. (Source: `SOURCE-20260224-002`)
- Legitimacy and stigma framing ("None of us are lying"). (Source: `SOURCE-20260224-005`)

Insurer SAY examples:
- Outcomes proof gating (clinical + economic outcomes over engagement).
- Outcome measurement criteria and privacy-compliant health-data utilization expectations (especially for AI/DTx). (Source: `SOURCE-20260225-007`)

### 7.3 VALUE protocol (Kano)
What you are extracting:
- what is must-have vs performance vs delighter.

How to do it:
1. Generate candidate attributes from DO + SAY pain points (must be evidence-grounded).
2. Classify with Kano logic:
   - Basic (absence = rejection)
   - Performance (more = better)
   - Delighter (unexpected but valuable)
3. Record in a cohort-specific Kano run.

---

## 8) Circular Reasoning Detection Checklist

Fail the claim if any of these are true:
- It cites only internal docs (`STRUCTURE.md`, methodology slides) and no external source.
- It is a generic UX truth that could apply to any product.
- It introduces a numeric statistic that is not present in the referenced source.
- It asserts causal drivers using protected traits.

Pass the claim if:
- It cites an external source URL.
- It is scoped to one cohort.
- It is behavior- or language-specific.

---

## 9) Decision Flowchart: Is this claim valid?

```text
Start
  |
  v
Is the statement about PEOPLE/ORG behavior (not the framework)?
  |-- no --> Reject / rewrite
  |
  v
Do you have an external source URL for it?
  |-- no --> ASSUMED (add expires_on + validation_method) OR delete
  |
  v
What is the source type?
  |-- peer-reviewed / gov / large-N --> confidence = High
  |-- preprint / industry report / secondary survey coverage --> confidence = Medium
  |-- blog / anecdote --> confidence = Low
  |
  v
Create SOURCE-* record
  |
  v
Create CLAIM-* record (DO/SAY/VALUE)
  |
  v
Include CLAIM-* in RUN-* inputs
  |
  v
Only then: write persona bullets citing CLAIM-*
```

---

## 10) Templates (Copy/Paste)

### SOURCE template (minimum)
```yaml
---
id: SOURCE-YYYYMMDD-NNN
kind: 
title: 
published_on: YYYY-MM-DD
captured_on: YYYY-MM-DD
url_or_location: https://...
usage_notes: 
evidence_snippet: 
---
```

### CLAIM template (minimum)
```yaml
---
id: CLAIM-YYYYMMDD-NNN
statement: 
claim_type: DO | SAY | VALUE
confidence: High | Medium | Low
applies_to: insurer | patient_unknown_symptom
source_refs:
  - SOURCE-YYYYMMDD-NNN
review_status: Draft
---
```

### RUN template (minimum)
```yaml
---
id: RUN-YYYYMMDD-<cohort>-<framework>-NNN
framework: do | say | kawakita | kano
cohort: insurer | patient_unknown_symptom
inputs:
  - CLAIM-...
run_date: YYYY-MM-DD
prompt_fingerprint: grounded-<framework>-vX-YYYYMMDD
---
```

### PERSONA bullet rule
Every bullet must cite at least one `CLAIM-*`.

---

## 11) Minimal Evidence Set (Examples already used in this repo)

Patients:
- `SOURCE-20260224-004` (JMIR 2024 symptom checker usage patterns)
- `SOURCE-20260224-003` (BMC 2024 predictor of symptom checker use)
- `SOURCE-20260224-002` (PMC 2022 crowdsourced medicine on Reddit)
- `SOURCE-20260224-005` (BMC Health Serv Res 2023 legitimacy/access barriers)
- `SOURCE-20260225-011` (Ministero della Salute FSE 2.0 overview)
- `SOURCE-20260225-012` (Developers Italia FSE 2.0 objectives + architecture)

Insurers:
- Minimum required Italy/SSN source set should cover procurement/HTA governance, interoperability backbone constraints (FSE/EDS), and AI/DTx evaluation expectations.
- Examples already present in this repo:
  - `SOURCE-20260225-006` (AGENAS PNHTA-DM)
  - `SOURCE-20260225-007` (AGENAS AI/DTx HTA evaluation framework)
  - `SOURCE-20260225-013` (AGENAS EDS overview)

---

## 12) Quality Gates (Do not ship without these)

Before considering persona_db complete:
- Every `CLAIM-*` has at least one `SOURCE-*` URL.
- Every `RUN-*` lists `CLAIM-*` inputs.
- Every `PERSONA-*` bullet cites `CLAIM-*`.
- Circular reasoning check passes (no internal-doc-only claims).
- Any LOW-confidence claims are clearly marked and not foundational.
