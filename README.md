# Reusable Salesforce Codex MCP Workflow Template

## What this repository is

This repository is a reusable workflow/template package for Salesforce delivery with Codex and Salesforce DX MCP.

It provides:

- Agent role definitions for structured collaboration.
- Reusable skills for analysis, planning, implementation, security, QA, release, and documentation.
- Documentation templates and quality gates.
- Installation scaffolding to copy this package into Salesforce DX projects.

## What this repository is not

- Not a Salesforce managed package.
- Not a deployable Salesforce metadata package.
- Not a CI/CD pipeline.
- Not an automated production deployment tool.

This repository should be copied into Salesforce DX projects and customized with your project values.

## V2 architecture overview

```text
.codex/
  config.toml.example
  agents/
    salesforce-orchestrator.md
    salesforce-architect.md
    salesforce-developer.md
    apex-analyzer.md
    apex-senior-refactor.md
    apex-test-engineer.md
    salesforce-security-reviewer.md
    salesforce-qa.md
    salesforce-release-manager.md
    salesforce-documentation.md
  skills/
    ticket-analysis.md
    ticket-complexity-classification.md
    metadata-discovery.md
    solution-design.md
    salesforce-implementation.md
    apex-review.md
    apex-static-analysis.md
    apex-safe-refactoring.md
    apex-test-hardening.md
    apex-architecture-layering.md
    apex-dml-separation.md
    apex-refactoring-report.md
    lwc-review.md
    security-review.md
    test-generation.md
    metadata-manifest.md
    uat-validation.md
    deployment-docs.md
    quality-gates.md

docs/
  salesforce-mcp-workflow.md
  ticket-template.md
  uat-template.md
  deployment-checklist.md
  quality-gates.md
  apex-refactoring-workflow.md
  apex-refactoring-checklist.md
  apex-refactoring-report-template.md
  definition-of-ready.md
  definition-of-done.md
  no-go-rules.md
  environments.md
  prompt-library.md
  adoption-guide.md

.github/
  pull_request_template.md
  ISSUE_TEMPLATE/
    salesforce-ticket.md

scripts/
  install-workflow.sh
```

## Agents included

- `salesforce-orchestrator`: starts and routes each ticket lifecycle.
- `salesforce-architect`: produces safe implementation plans.
- `salesforce-developer`: implements approved scope in ACT MODE.
- `apex-analyzer`: performs read-only Apex analysis before refactoring.
- `apex-senior-refactor`: applies minimal-risk Apex cleanup after approval.
- `apex-test-engineer`: creates and hardens Apex tests after refactoring.
- `salesforce-security-reviewer`: validates security, sharing, and permissions.
- `salesforce-qa`: validates acceptance criteria and test depth.
- `salesforce-release-manager`: prepares release readiness and rollback.
- `salesforce-documentation`: produces business and technical delivery notes.

## Skills included

- Intake and planning: `ticket-analysis`, `ticket-complexity-classification`, `solution-design`, `quality-gates`.
- Discovery and scope control: `metadata-discovery`, `metadata-manifest`, `salesforce-implementation`.
- Engineering quality: `apex-review`, `apex-static-analysis`, `apex-safe-refactoring`, `apex-test-hardening`, `apex-architecture-layering`, `apex-dml-separation`, `apex-refactoring-report`, `lwc-review`, `security-review`, `test-generation`.
- Delivery readiness: `uat-validation`, `deployment-docs`.

## Documentation included

- Workflow and operational guidance.
- Dedicated Apex refactoring workflow, checklist, and report templates.
- Ticket, UAT, and deployment templates.
- Quality gates, Definition of Ready, Definition of Done, and no-go rules.
- Environment strategy and adoption guide.
- Prompt library for each delivery phase.

## Installation steps

1. Copy this repository (or selected workflow files) into your Salesforce DX project.
2. Run `scripts/install-workflow.sh /path/to/your/sfdx-project`.
3. Keep your existing `.codex/config.toml` if already present.
4. Customize placeholders in docs/config before first ticket.
5. Start with Orchestrator in PLAN MODE.

## Customization placeholders

Customize these placeholders before active use:

- `{{PROJECT_NAME}}`
- `{{DEV_ORG_ALIAS}}`
- `{{UAT_ORG_ALIAS}}`
- `{{PROD_ORG_ALIAS}}`
- `{{HAS_UAT}}`
- `{{HAS_PROD}}`
- `{{DEPLOYMENT_POLICY}}`
- `{{DEFAULT_BRANCH}}`
- `{{TEAM_NAME}}`

## Recommended first workflow

Ticket
-> Orchestrator
-> Architect
-> Human approval
-> Developer
-> Security Reviewer
-> QA
-> Release Manager
-> Documentation
-> Manual deployment approval

## Apex Refactoring Workflow

Use the dedicated Apex workflow for cleanup and behavior-preserving refactors instead of the generic developer agent.

- `apex-analyzer` is read-only and must produce the first report.
- `apex-senior-refactor` preserves business logic, public contracts, and approved boundaries.
- `apex-test-engineer` hardens tests after the refactor.
- `salesforce-orchestrator` should route refactoring work automatically when the request indicates Apex cleanup.
- This workflow is suited to DM classes, EM classes, service/SM classes, Apex controllers, trigger handlers, batch classes, and utility classes.
- It supports layered architecture cleanup.
- It can separate DML and complex SOQL out of controllers.
- It supports DM, EM, SM/Service, Controller, and Wrapper patterns.
- It requires an analyzer report and human approval first.

## Safety model

- Production deployment is forbidden by default.
- Human approval is required before implementation (ACT MODE).
- Human approval is required before any deployment activity.
- Metadata names must be verified, never guessed.
- Security uncertainty is a stop condition until reviewed.

## Example first prompt

```text
Use salesforce-orchestrator in PLAN MODE for {{PROJECT_NAME}}.
Analyze this ticket using {{DEV_ORG_ALIAS}}, classify complexity, list required agents,
list approval gates, and return the first next action.
```

## Roadmap for dev-only, UAT, and production-readonly usage

1. Dev-only baseline
- Use `{{DEV_ORG_ALIAS}}`.
- Manual validation and local checks.
- No deployment automation.

2. Dev + UAT
- Enable `{{HAS_UAT}}` and configure `{{UAT_ORG_ALIAS}}`.
- Require Security Reviewer and Release Manager for medium+ changes.
- Use formal quality gates before UAT handoff.

3. Dev + UAT + production-readonly
- Enable `{{HAS_PROD}}` and configure `{{PROD_ORG_ALIAS}}` as readonly.
- Production inspection only, no production deployment.
- Keep explicit human approval and rollback readiness.
