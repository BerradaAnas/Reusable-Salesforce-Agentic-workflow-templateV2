# Salesforce Codex MCP V2 Operating Model

## Project purpose

This repository is a reusable Salesforce delivery workflow/template package for Codex-powered teams. It standardizes how tickets move from intake to validated release readiness with explicit approval gates.

## Scope

- Workflow/template assets only: agent definitions, reusable skills, docs, and installer script.
- This repository is not a Salesforce metadata package.
- Do not create or deploy Salesforce metadata from this template repository.

## Environment placeholders

Use placeholders until each project customizes them:

- `{{PROJECT_NAME}}`
- `{{DEV_ORG_ALIAS}}`
- `{{UAT_ORG_ALIAS}}`
- `{{PROD_ORG_ALIAS}}`
- `{{HAS_UAT}}`
- `{{HAS_PROD}}`
- `{{DEPLOYMENT_POLICY}}`
- `{{DEFAULT_BRANCH}}`
- `{{TEAM_NAME}}`

## Operating modes

### PLAN MODE

- Default mode for every ticket.
- Allowed: analysis, metadata discovery, implementation planning, risk identification, test strategy, documentation drafting.
- Forbidden: implementation, deployment, destructive actions.

### ACT MODE

- Requires explicit human approval.
- Allowed: approved local file changes and test updates.
- Forbidden: scope expansion without approval, deployment by default.

### REVIEW MODE

- Used for security, QA, and release-readiness review.
- Allowed: validation, findings, go/no-go recommendations.
- Forbidden: implementation or deployment by default.

### RELEASE MODE

- Used only after explicit deployment approval.
- Allowed: deployment planning, checklist confirmation, rollback preparation.
- Forbidden: deployment execution without explicit approval.

## Agent workflow

1. Ticket intake (Orchestrator)
2. Ticket analysis and complexity classification
3. Architecture plan and metadata discovery
4. Human plan approval gate
5. ACT MODE implementation
6. Security review
7. QA validation
8. Release readiness package
9. Documentation completion
10. Human deployment approval

## Apex refactoring workflow

Use the dedicated Apex Refactoring Workflow for Apex cleanup, bulkification, controller cleanup, service refactors, trigger handler cleanup, and safe maintainability work:

1. `apex-analyzer`
2. Human approval
3. `apex-senior-refactor`
4. `apex-test-engineer`
5. `salesforce-security-reviewer`
6. `salesforce-qa`
7. `salesforce-release-manager` if deployment planning is needed
8. `salesforce-documentation`

## Human approval gates

- Gate A: Plan approval before ACT MODE.
- Gate B: Scope confirmation before file changes.
- Gate C: Security sign-off for required complexity levels.
- Gate D: QA sign-off before release readiness.
- Gate E: Explicit deployment approval before deployment activity.

## Safety rules

- Start every ticket in PLAN MODE.
- Do not modify files before explicit ACT MODE approval.
- Do not deploy before explicit deployment approval.
- Apex refactoring must use the Apex Refactoring Workflow.
- Never refactor Apex directly through the generic developer agent.
- Analyzer report required before refactor.
- Human ACT MODE approval required before edits.
- Tests required after refactor.
- For Apex architecture refactoring:
  - Controllers must be thin.
  - DML belongs in DM.
  - Business orchestration belongs in Service/SM.
  - Object-specific queries and aggregations belong in EM/DM.
  - Wrapper contracts must be preserved.
  - Any movement across layers requires analyzer report and explicit approval.
- Security review required for controllers, `@AuraEnabled`, dynamic SOQL, sharing, and permission-sensitive code.
- QA review required before any release.
- Never guess Salesforce metadata names.
- Use MCP only for relevant discovery.
- Verify object, field, class, LWC, flow, layout, validation rule, permission set, and flexipage names.
- Keep changes small.
- Summarize every changed file.
- Stop if security impact is unknown.
- Stop if acceptance criteria are missing.
- Stop if deployment target is unclear.

## No-go rules

Do not proceed when any of the following is true:

- Missing acceptance criteria.
- Unknown deployment target.
- Unverified metadata names.
- Unknown security impact.
- Requested destructive change without explicit approval.
- Exposed secrets or credentials.
- Scope expansion without approval.
- Apex refactor requested without analyzer report.

## Coding standards

### Apex

- Bulkify for single and multi-record execution.
- No SOQL in loops.
- No DML in loops.
- Respect sharing model.
- Evaluate CRUD/FLS for user-facing and permission-sensitive paths.
- Write meaningful outcome-based tests.

### Lightning Web Components

- Include accessible labels and keyboard-safe interactions.
- Handle wire and imperative errors clearly.
- Provide loading states for async behavior.
- Use permission-aware UI patterns.
- Avoid unsafe data exposure.

## Salesforce-specific rules

- Verify metadata API names before planning or implementation.
- Do not assume org capabilities.
- Separate created, modified, and deleted components in manifests.
- Do not include destructive changes unless explicitly approved.

## MCP usage rules

- Use MCP only for relevant discovery tied to the ticket.
- Do not retrieve the entire org without explicit approval.
- Document discovery evidence, gaps, and confidence.
- Preserve least-privilege access and avoid secret exposure.

## Default deployment policy

`{{DEPLOYMENT_POLICY}}` applies.

If not yet customized, default policy is:

- Dev org activity allowed with explicit approval.
- UAT activity only when `{{HAS_UAT}}` is enabled and approved.
- Production deployment forbidden by default.
- Production access (if any) should be readonly until controlled release governance is approved.
