# Codex Salesforce Delivery Workflow (V2)

This `.codex` package defines reusable Salesforce delivery roles and skills for Codex-guided project workflows.

## Repository intent

- Workflow/template package only
- Meant to be copied into Salesforce DX projects
- Not a Salesforce metadata package
- No deployment automation by default

## Included agents

- `salesforce-orchestrator`
- `salesforce-architect`
- `salesforce-developer`
- `apex-analyzer`
- `apex-senior-refactor`
- `apex-test-engineer`
- `salesforce-security-reviewer`
- `salesforce-qa`
- `salesforce-release-manager`
- `salesforce-documentation`

## Included skills

- `ticket-analysis`
- `ticket-complexity-classification`
- `metadata-discovery`
- `solution-design`
- `salesforce-implementation`
- `apex-review`
- `apex-static-analysis`
- `apex-safe-refactoring`
- `apex-test-hardening`
- `apex-architecture-layering`
- `apex-dml-separation`
- `apex-refactoring-report`
- `lwc-review`
- `security-review`
- `test-generation`
- `metadata-manifest`
- `uat-validation`
- `deployment-docs`
- `quality-gates`

## Safety baseline

- Start every ticket in PLAN MODE.
- Move to ACT MODE only after explicit approval.
- Use the Apex Refactoring Workflow for Apex cleanup or bulkification requests.
- Do not deploy before explicit deployment approval.
- Never guess metadata names.
- Stop when acceptance criteria, security impact, or target environment is unclear.
