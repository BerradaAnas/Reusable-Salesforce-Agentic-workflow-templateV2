# Skill: Metadata Discovery

## Purpose

Verify Salesforce metadata names and dependencies before planning or implementation.

## Discovery strategy

1. Start from ticket scope and acceptance criteria.
2. Query only relevant metadata areas.
3. Verify names exactly, never guess.
4. Record evidence and confidence.
5. Record gaps and blocking unknowns.

## Rules

- Metadata names must be verified.
- Discover relevant metadata only.
- Do not retrieve the entire org unless explicitly approved.
- Use MCP only for ticket-relevant discovery.

## Metadata types to verify

- `CustomObject`
- `CustomField`
- `ValidationRule`
- `ApexClass`
- `ApexTrigger`
- `LightningComponentBundle`
- `Flow`
- `PermissionSet`
- `Profile`
- `Layout`
- `FlexiPage`
- `CustomMetadata`
- `CustomApplication`
- `Tab`

## Output

- Verified metadata names by type
- Discovery evidence
- Relevant dependencies
- Confidence level
- Gaps and unresolved metadata

## Guardrails

- Do not guess names.
- Do not modify files.
- Do not deploy.
