# Potential Extra Data + Analysis (DeepWiki Review)

This file captures additional context and data opportunities discovered by reviewing `https://deepwiki.com/giumar11/info_MIB`. It is intended to make the NPD investigation and downstream product decisions more complete and Italy/SSN-localized.

Important: this repository's scope is Italy/SSN; non-Italy-only evidence must be treated as out-of-scope and should not be used to justify Italy product decisions.

Current repo status (as of 2026-02-25):
- Interviews were upgraded to be product-development-ready (DO/SAY/WANT, empathy-map prompts, customer journey breakdowns).
- Interview evidence was instantiated as `SOURCE-*` records (`SOURCE-20260225-015` through `SOURCE-20260225-030`) pointing to applied response files under `analysis/persona_db/03_framework_runs/interviews/responses/`.
- Interview-derived claims were extracted as `CLAIM-*` (`CLAIM-20260225-016` through `CLAIM-20260225-047`) and used to extend DO/SAY runs and complete personas.

---

## 1) What DeepWiki Shows (Relevant to Product Development)

### 1.1 Dual mission: analytics + chatbot
DeepWiki describes the `info_MIB` repository as a unified data foundation supporting:
- Healthcare analytics for Italian SSN performance, disparities, and sustainability.
- A “Geen.ai chatbot system” for navigating complex pathologies and identifying needed specialists.

Why this matters:
- Our patient cohort (`patient_unknown_symptom`) is heavily about uncertainty and navigation.
- DeepWiki indicates there is already a data/knowledge pipeline oriented to navigation and specialist mapping.

### 1.2 A mature data source registry pattern
DeepWiki describes `sources_catalog.csv` as a machine-readable central registry (id, owner, category, license, update frequency, geography, granularity, file paths).

Why this matters:
- This is a concrete implementation of the “evidence discipline” we want in persona_db.
- The same approach can be mirrored for persona_db: consistent source registry + reproducible traceability.

### 1.3 Proxy indicator methodology for “complex pathologies”
DeepWiki highlights a proxy-based approach to identify pathologies requiring multiple specialists (because outpatient specialist data is not directly available).

The four proxies described:
- Rare diseases (Orphanet)
- Oncological pathologies (multi-disciplinary care)
- Multimorbidity in elderly (3+ chronic conditions)
- Complex chronic conditions (multi-organ involvement)

Why this matters:
- This is directly aligned with “unknown/unexplained symptoms” journeys.
- It provides an actionable structure for sub-segmentation of patient journeys by complexity driver.
- It supports building features like “which specialist next” and “in what order” (PDTA sequencing).

### 1.4 Italian healthcare data ecosystem and operational constraints
DeepWiki documents Italian institutional datasets that can localize constraints:
- PNGLA waiting times
- PNE outcomes
- LEA/NSG regional KPIs
- SDO discharge data (diagnoses, DRGs)
- ISTAT EHIS survey microdata
- Orphanet rare disease taxonomy and prevalence classes

Why this matters:
- It can shift our product from generic “care navigation” to region- and system-capacity-aware navigation.
- It provides real-world outcome and access constraints that can be used for “VALUE” and “DO” layers.

---

## 2) Gaps vs Current persona_db (What’s missing today)

### 2.1 Stakeholder model mismatch (Italy/SSN)
Status: addressed in current repo.

The `insurer` cohort is treated as Italy/SSN procurement and governance stakeholders (Regions/ASL and adjacent national governance constraints) and is grounded in Italy/EU anchors plus interview-derived procurement journey evidence.

### 2.2 More patient navigation realism
Our `patient_unknown_symptom` evidence is strong on:
- symptom checkers
- community sensemaking
- legitimacy and access barriers

DeepWiki suggests we can deepen realism by adding system-specific navigation constraints:
- waiting times and regional access capacity
- condition-level complexity score (specialist count) and likely sequences

Update: interview instruments and personas now capture DO/SAY/WANT, empathy-map signals, and journey breakdown moments; system-capacity constraints and complexity scoring are still pending evidence expansions.

---

## 3) High-Value Extra Analyses to Make the NPD Output More Complete

### 3.1 Patient journey enrichment: “specialist complexity” layer
Add a complexity dimension to patient personas and journey maps:
- Complexity score (1-5) based on multi-specialty needs
- Proxy indicator category (rare / onco / multimorbidity / complex chronic)

How it helps downstream:
- Feature prioritization: more complex pathways benefit most from structured clinician-ready outputs and sequence guidance.
- Product UX: different complexity categories require different “next steps” (e.g., rare disease center routing vs multimorbidity coordination).

### 3.2 Regional feasibility: “can the system deliver this?” layer
Use PNGLA waiting times and PNE outcomes to add constraints:
- If waiting times are high, patients will self-triage and community-seek longer.
- Navigation features could incorporate alternative paths (teleconsults, referral centers) based on capacity.

How it helps downstream:
- Better prioritization of “follow-through” features (appointments, referrals, administrative support).
- Better measurement: define outcomes not only as clinical but also time-to-appointment / reduction in failed attempts.

### 3.3 Evidence discipline upgrade: unify “sources catalog” pattern
Adopt the `sources_catalog.csv` idea for persona_db:
- Create a single index file listing SOURCE IDs, URLs, cohort mapping, confidence tier, and last_checked.

Why:
- Faster audits.
- Prevents circular reasoning regressions.

---

## 4) Actionable Italy/SSN Datasets (Short List)

Based on recent verification (Feb 2026), these are the most actionable datasets for integrating SSN reality into the persona_db.

### 4.1 Performance & Outcomes (PNE/LEA)
- **AGENAS PNE (Piano Nazionale Esiti)**: [pne.agenas.it](https://pne.agenas.it/)
  - *Data*: Hospital quality indicators, clinical outcomes, and performance benchmarks.
- **Ministero della Salute - LEA/NSG**: [Il Nuovo Sistema di Garanzia (NSG)](https://www.salute.gov.it/new/it/tema/livelli-essenziali-di-assistenza/il-nuovo-sistema-di-garanzia-nsg)
  - *Data*: Regional compliance with Essential Levels of Assistance (LEA).

### 4.2 Accessibility & Capacity (PNLA/PNGLA)
- **PNLA (Piattaforma Nazionale Liste di Attesa)**: dashboard and updates are published via institutional channels.
  - Ministero della Salute (waitlists entry point + PNGLA context): https://www.salute.gov.it/new/it/tema/liste-di-attesa
  - MoH announcement (PNLA on AGENAS transparency portal): https://www.salute.gov.it/new/it/news-e-media/notizie/online-la-piattaforma-nazionale-delle-liste-di-attesa-sul-portale-della
  - PNLA dashboard (Portale della Trasparenza - PNLA): https://www.portaletrasparenzaservizisanitari.it/piattaforma-nazionale-delle-liste-di-attesa/
  - AGENAS transparency portal (project hub): https://www.agenas.gov.it/agenzia-per-la-sanit%C3%A0-digitale/progetti-strategici/portale-della-trasparenza
  - AGENAS update (cruscotto + videoguide): https://www.agenas.gov.it/aree-tematiche/comunicazione/primo-piano/2661-disponibile-sul-portale-della-trasparenza-agenas-un-aggiornamento-dei-dati-del-cruscotto-della-piattaforma-nazionale-delle-liste-di-attesa-e-una-videoguida

### 4.3 Patient & Disease Context (ISTAT/SDO/Orphanet)
- **ISTAT EHIS (European Health Interview Survey)**: [Indagine europea sulla salute - EHIS 2025](https://www.istat.it/informazioni-sulla-rilevazione/indagine-europea-sulla-salute-ehis/)
  - *Data*: Self-reported health status, healthcare utilization, and health determinants.
- **Ministero della Salute - SDO (Scheda Dimissione Ospedaliera)**: https://www.salute.gov.it/new/it/tema/assistenza-ospedaliera-sdo/
  - *Data*: Comprehensive hospital activity (diagnoses, procedures, DRGs).
- **Orphanet**: [orpha.net](https://www.orpha.net/)
  - *Data*: Rare disease taxonomy, prevalence classes, and reference center mapping. Useful for "specialist complexity" proxies.

### 4.4 DeepWiki Pages and Useful Query Pack

Verified DeepWiki entry points for `giumar11/info_MIB` (index date shown by DeepWiki: 2026-02-14):
- Overview: https://deepwiki.com/giumar11/info_MIB/1-overview
- Sources catalog system: https://deepwiki.com/giumar11/info_MIB/2.1-sources-catalog-system
- Governance/performance data: https://deepwiki.com/giumar11/info_MIB/3.1-governance-and-performance-data
- Proxy indicator methodology: https://deepwiki.com/giumar11/info_MIB/4.1-proxy-indicator-methodology
- Chatbot API/query patterns: https://deepwiki.com/giumar11/info_MIB/6.5-chatbot-api-and-query-patterns
- Key dataset references: https://deepwiki.com/giumar11/info_MIB/7-key-dataset-references
- SDO detail page: https://deepwiki.com/giumar11/info_MIB/7.1-sdo-hospital-discharge-data
- EHIS detail page: https://deepwiki.com/giumar11/info_MIB/7.2-istat-ehis-survey-data

High-value queries to enrich this repo's analysis (to run against ingested datasets/warehouse):

1) **Regional access-outcome coupling**
- Goal: test whether higher waiting-time pressure co-occurs with weaker outcomes.
- Inputs: PNLA/PNGLA + PNE + LEA/NSG.
- Example query question: "For each region and quarter, how do waiting-time indicators (priority classes U/B/D/P) correlate with selected PNE outcome indicators and NSG macro-area scores?"

2) **Diagnostic odyssey proxy by complexity class**
- Goal: build a patient-facing complexity map that is evidence-grounded.
- Inputs: Orphanet prevalence classes + SDO diagnosis/procedure patterns + EHIS multimorbidity indicators.
- Example query question: "Which pathology groups (rare/onco/multimorbidity/complex chronic) show the highest estimated multi-specialist burden by age segment and region?"

3) **Handoff risk hotspots in care pathways**
- Goal: identify where patient momentum loss is most likely in real SSN flow.
- Inputs: SDO discharge/transfer patterns + PNLA waiting-time constraints.
- Example query question: "Which region-service combinations show high transfer/retake signals plus long waits, suggesting handoff bottlenecks?"

4) **Equity and variance scan**
- Goal: make "regional feasibility" concrete in personas/summaries.
- Inputs: LEA/NSG + PNLA/PNGLA + EHIS.
- Example query question: "Where do service access constraints (waits) and self-reported unmet need co-occur, and how stable is this over time?"

5) **Procurement readiness signal (insurer cohort)**
- Goal: provide governance-facing evidence packs tied to measurable outcomes.
- Inputs: PNE + LEA/NSG + PNLA/PNGLA (plus governance metadata from AGENAS/MoH).
- Example query question: "For each region, what minimal KPI bundle best captures outcome impact + access impact + compliance trajectory for digital pathway interventions?"

6) **Chatbot retrieval quality checks (Geen.ai-style routing)**
- Goal: ensure specialist suggestions are backed by robust source joins.
- Inputs: processed pathology-specialist mappings + proxy indicator outputs.
- Example query question: "For top N pathology intents, how often does retrieval return specialist sets consistent with proxy class and regional feasibility constraints?"

---

## 5) Unified Evidence Pattern: sources_catalog.csv

To ensure machine-readable traceability (as described in DeepWiki), the repository should adopt a central `sources_catalog.csv` located in `analysis/persona_db/01_sources/`.

**Catalog Structure:**

| Field | Description | Example |
| :--- | :--- | :--- |
| **id** | Unique identifier | `SOURCE-AGENAS-PNE-2025` |
| **owner** | Institutional owner | `AGENAS` |
| **category** | Data type | `outcome_kpi`, `survey_microdata`, `waiting_times` |
| **geography** | Scope | `Italy`, `Region (NUTS2)` |
| **url** | Primary entry point | `https://pne.agenas.it/` |
| **file_paths** | Local cache path | `datasets/raw/sistema_sanitario/italia/...` |
| **last_checked** | Date of last verification | `2026-02-25` |

---

## 6) Concrete Next-Step Work Items (If You Want This Integrated)

1) Scope and cohort discipline (done)
- Italy/SSN scope lock is in place.
- `insurer` is treated as Italy/SSN procurement/governance stakeholders.

2) Add system-capacity constraints to patient and procurement journey models (pending)
- Ingest PNLA/PNGLA, PNE, NSG/LEA, EHIS, and SDO as `SOURCE-*` records and extract `CLAIM-*` about regional variance, waiting-time constraints, and outcome anchors.
- Add a "regional feasibility" section per patient persona and an "implementation feasibility" section per insurer persona.

3) Add condition complexity scoring into persona_db (pending)
- Use Orphanet + SDO + EHIS to ground a "specialist complexity" layer (proxy categories + routing/sequence hypotheses) and feed it into journey maps.

4) Keep summaries aligned (in progress)
- Update `analysis/final_analysis_summary.md` as new system-capacity and regional-variance claims are added.
