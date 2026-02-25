# Governance Rules and Scope Locks

## Versioning
- Format Version: 1.0.0
- Update Cadence: Quarterly review and annual refresh as defined in `methodology/methodology_translated.md:322`.
- Changelog Requirement: Every update must include a changelog entry detailing what changed, why, and when.

## Evidence Rules
No factual assertion or claim may exist in this database without a direct link to its source.
- Valid Evidence: Qualitative (interviews, reviews, logs), Quantitative (CRM, analytics, NPS), and Contextual (industry reports).
- Linking: Every claim must use the format `[Claim] (Source: [ID])`.
- No Uncited Claims: Any claim lacking a verifiable source will be flagged and removed during the next review cycle.
- Anti-Bias Guardrail: Per `methodology/methodology_translated.md:217`, protected traits must not be used as causal explanations. Primary drivers must be behavioral and situational variables.

## Assumption Rules
Assumptions are permitted only when evidence is unavailable, but they must be time-bound.
- Requirement: Every assumption must include an `expires_on` date and a `validation_method`.
- Expiration: When an assumption expires, it must either be validated by evidence or deleted.
- Validation Method: Must describe a specific action, such as five short interviews, to prove or disprove the assumption.

## Conflict Resolution
When sources disagree, do not force a consensus.
- Policy: Maintain competing hypotheses and log the contradiction explicitly in the persona file.
- Documentation: Note the specific sources that conflict and the nature of the disagreement. This provides an accurate view of market complexity.

## Scope Boundaries
The persona database version 1 is strictly limited to the following frameworks and methodologies as defined in `STRUCTURE.md`:
- DO: Implicit observation and behavioral journey analysis.
- SAY: Interview planning, target segmentation, and Kawakita clustering.
- VALUE: Kano model classification for Basic Needs, Performance Needs, and Delighters.
- Interview Planning: Question clusters for unmet needs, choice criteria, and competitive perception.

No additional frameworks, such as Jobs-to-be-Done or empathy maps, are to be integrated until the next version.
