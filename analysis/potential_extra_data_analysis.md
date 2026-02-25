# Potential Extra Data + Analysis (DeepWiki Review)

This file captures additional context and data opportunities discovered by reviewing `https://deepwiki.com/giumar11/info_MIB` (last indexed: 14 February 2026). It is intended to make the NPD investigation and downstream product decisions more complete and Italy/SSN-localized.

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

**Why this matters:**
- Our patient cohort (`patient_unknown_symptom`) is heavily about uncertainty and navigation.
- DeepWiki indicates there is already a data/knowledge pipeline oriented to navigation and specialist mapping.

### 1.2 A mature data source registry pattern
DeepWiki describes `sources_catalog.csv` as a machine-readable central registry (id, owner, category, license, update frequency, geography, granularity, file paths) for institutional datasets.

**Why this matters:**
- This is a concrete implementation of the “evidence discipline” we want in persona_db.
- The same approach can be mirrored for persona_db: consistent source registry + reproducible traceability.

### 1.3 Proxy indicator methodology for “complex pathologies”
DeepWiki highlights a proxy-based approach to identify pathologies requiring multiple specialists, bridging the gap left by the lack of outpatient specialist data in administrative systems (SDO).

**Proxy classes highlighted by DeepWiki:**
1. **Rare diseases (Orphanet)**
2. **Oncological pathologies**
3. **Multimorbidity in elderly populations**
4. **Complex chronic conditions**

Operational implication for this repo: use these classes as a segmentation scaffold for patient journeys and specialist-routing hypotheses, then validate with institutional datasets before promoting to high-confidence claims.

### 1.4 Italian healthcare data ecosystem
DeepWiki and linked institutional references point to a broad Italy/EU ecosystem for operations, outcomes, and population context. For this repository, the highest-value anchors remain PNLA/PNGLA, PNE, LEA/NSG, SDO, EHIS, and Orphanet.

---

## 2) Gaps vs Current persona_db (What’s missing today)

### 2.1 Stakeholder model mismatch (Italy/SSN)
Status: addressed in current repo.
The `insurer` cohort is treated as Italy/SSN procurement and governance stakeholders (Regions/ASL and adjacent national governance constraints) and is grounded in Italy/EU anchors plus interview-derived procurement journey evidence.

### 2.2 More patient navigation realism
Our `patient_unknown_symptom` evidence is strong on symptom checkers and community sensemaking, but DeepWiki suggests we can deepen realism by adding:
- **System-capacity constraints**: Waiting times (PNGLA) and regional access capacity.
- **Condition-level complexity**: Proxy class and likely multi-specialist burden by condition profile.

---

## 3) High-Value Extra Analyses to Make the NPD Output More Complete

### 3.1 Patient journey enrichment: “specialist complexity” layer
Add a complexity dimension to patient personas with explicit proxy classes (rare/onco/multimorbidity/complex chronic) and a simple burden tier (low/medium/high multi-specialist coordination).

### 3.2 Regional feasibility: “can the system deliver this?” layer
Use PNGLA waiting times and PNE outcomes to add constraints. If waiting times are high, patients will self-triage and community-seek longer.

### 3.3 Evidence discipline upgrade: unify “sources catalog” pattern
Adopt the `sources_catalog.csv` idea for persona_db to ensure machine-readable traceability for institutional sources.

---

## 4) Actionable Italy/SSN Datasets (Short List)

### 4.1 Performance & Outcomes (PNE/LEA)
- **AGENAS PNE (Piano Nazionale Esiti)**: [pne.agenas.it](https://pne.agenas.it/)
- **Ministero della Salute - LEA/NSG**: [Il Nuovo Sistema di Garanzia (NSG)](https://www.salute.gov.it/new/it/tema/livelli-essenziali-di-assistenza/il-nuovo-sistema-di-garanzia-nsg)

### 4.2 Accessibility & Capacity (PNLA/PNGLA)
- **PNLA (Piattaforma Nazionale Liste di Attesa)**: [dashboard](https://www.portaletrasparenzaservizisanitari.it/piattaforma-nazionale-delle-liste-di-attesa/)

### 4.3 Patient & Disease Context (ISTAT/SDO/Orphanet)
- **ISTAT EHIS (European Health Interview Survey)**: [Microdata info](https://www.istat.it/informazioni-sulla-rilevazione/indagine-europea-sulla-salute-ehis/)
- **Ministero della Salute - SDO (Scheda Dimissione Ospedaliera)**: [Hospital data](https://www.salute.gov.it/new/it/tema/assistenza-ospedaliera-sdo/)
- **Orphanet**: [orpha.net](https://www.orpha.net/) - Taxonomy for diagnostic odyssey.

### 4.4 High-Signal DeepWiki Entry Points
Verified DeepWiki entry points for `giumar11/info_MIB`:
- **Overview**: [1-overview](https://deepwiki.com/giumar11/info_MIB/1-overview)
- **Sources catalog system**: [2.1-sources-catalog-system](https://deepwiki.com/giumar11/info_MIB/2.1-sources-catalog-system) - Master registry logic.
- **Governance/performance data**: [3.1-governance-and-performance-data](https://deepwiki.com/giumar11/info_MIB/3.1-governance-and-performance-data)
- **Proxy indicator methodology**: [4.1-proxy-indicator-methodology](https://deepwiki.com/giumar11/info_MIB/4.1-proxy-indicator-methodology) - Proxy logic for complex-pathology identification.
- **Chatbot API/query patterns**: [6.5-chatbot-api-and-query-patterns](https://deepwiki.com/giumar11/info_MIB/6.5-chatbot-api-and-query-patterns)
- **Key dataset references**: [7-key-dataset-references](https://deepwiki.com/giumar11/info_MIB/7-key-dataset-references)
- **SDO detail**: [7.1-sdo-hospital-discharge-data](https://deepwiki.com/giumar11/info_MIB/7.1-sdo-hospital-discharge-data)
- **EHIS detail**: [7.2-istat-ehis-survey-data](https://deepwiki.com/giumar11/info_MIB/7.2-istat-ehis-survey-data)

### 4.5 Queryable Entry Points (Verified Feb 2026)

Use these entry points when moving from narrative analysis to reproducible queries.

| Topic | Canonical URL | Query/path strategy | Caveats |
| :--- | :--- | :--- | :--- |
| **PNLA / PNGLA** | https://www.portaletrasparenzaservizisanitari.it/piattaforma-nazionale-delle-liste-di-attesa/ | Use the transparency dashboard as the operational entry and pair with Ministero pages for context/versioning. | Public entry is dashboard-first; stable bulk-download/API documentation is limited in the same path. |
| **PNE** | https://pne.agenas.it/ | Use web-app indicator drill-down and exports available in interface flows. | A simple public REST endpoint is not exposed from the landing page. |
| **LEA / NSG** | https://www.salute.gov.it/new/it/tema/livelli-essenziali-di-assistenza/il-nuovo-sistema-di-garanzia-nsg | Use yearly "Risultati anno" pages and linked technical documents/annexes for regional comparisons. | Publication format is mixed (pages + documents), so ingestion may need extraction rather than API pulls. |
| **SDO** | https://www.salute.gov.it/new/it/tema/assistenza-ospedaliera-sdo/ and https://www.dati.salute.gov.it/ | Use SDO thematic pages for coding/flow context, then discover downloadable datasets in `dati.salute.gov.it` via SDO tags and filters. | Dataset slugs can change; prefer catalog discovery plus `last_checked` in source metadata. |
| **EHIS (EU API, Italy filter)** | https://ec.europa.eu/eurostat/api/dissemination/statistics/1.0/data/ | Query `hlth_ehis_*` datasets with explicit filters (`geo=IT`, plus `sex`, `age`, `unit`, `time`). | Invalid/sparse dimension combinations may return metadata but no observations. |
| **Orphadata** | https://api.orphadata.com/openapi.json | Use OpenAPI as contract, then call endpoint families for classifications, cross-references, epidemiology, and specialty mappings. | Biannual refresh cadence (typically Jul/Dec) requires date/version pinning for reproducibility. |

Recommended ingestion policy for this repo:
- Store `source_url`, `access_path`, `retrieval_method`, and `last_checked` in each `SOURCE-*` record.
- Treat dashboard-only views as derived evidence unless export files/tables are preserved in local cache.
- For API sources (Eurostat/Orphadata), store full request URLs in metadata to keep `CLAIM-*` extraction reproducible.

---

## 5) Unified Evidence Pattern: sources_catalog.csv
The repository should adopt a central `sources_catalog.csv` in `analysis/persona_db/01_sources/` with fields: `id`, `owner`, `category`, `geography`, `url`, `file_paths`, `last_checked`.

---

## 6) Concrete Next-Step Work Items

1. **Add system-capacity constraints** to patient and procurement journey models by extracting `CLAIM-*` from PNGLA, PNE, and LEA/NSG.
2. **Add condition complexity scoring** into persona_db journey maps based on Orphanet + SDO + EHIS logic.
3. **Refine PDTA sequencing hypotheses** in `patient_unknown_symptom` personas using NSG PDTA indicators plus validated pathway documentation.
