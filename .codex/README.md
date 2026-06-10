# Codex Salesforce Delivery Workflow (V2)

This `.codex` package defines reusable Salesforce delivery roles and skills for Codex-guided project workflows.

## Repository intent

- Workflow/template package only
- Meant to be copied into Salesforce DX projects
- Not a Salesforce metadata package
- No deployment automation by default

## Single Entry Point Orchestration

The user talks to `salesforce-orchestrator`.

The orchestrator classifies the task and coordinates specialist agents internally.

The user does not need to manually call analyzer, developer, test engineer, QA, security, release, or documentation agents.

## Every Prompt as Work Intake

Every prompt is treated as potential work intake.

The orchestrator decides whether it is a question, feature, bug, refactor, investigation, QA task, release task, or documentation task.

## Prompt-Based Orchestration vs Runtime Multi-Agent System

This template provides prompt-based orchestration through Codex and project instructions.

It can apply or spawn specialist behavior where supported by Codex.

It is not yet a separate multi-process agent runtime.

A future version can add a runner script or MCP orchestrator.

## Apex Layered Refactoring

The workflow supports separating DML and complex SOQL from controllers into Service/SM, EM, and DM layers.

Target architecture:

`LWC -> Controller -> Service/SM -> EM -> DM -> Database`

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
