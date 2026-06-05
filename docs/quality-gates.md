# Quality Gates

## Gate 1: Ticket Ready

- Purpose: ensure ticket is actionable.
- Required evidence: business context, user story, acceptance criteria.
- Owner: Orchestrator and Architect.
- Pass criteria: acceptance criteria are clear and testable.
- Block condition: acceptance criteria missing or ambiguous.

## Gate 2: Plan Approved

- Purpose: authorize implementation scope.
- Required evidence: solution plan, metadata impact, test strategy, risks.
- Owner: Architect and human approver.
- Pass criteria: explicit approval to move to ACT MODE.
- Block condition: unresolved security or scope questions.

## Gate 3: Implementation Complete

- Purpose: verify approved scope implementation quality.
- Required evidence: change summary, file list, tests added or updated.
- Owner: Developer.
- Pass criteria: approved scope implemented without expansion.
- Block condition: unapproved scope changes or missing tests.

## Gate 4: Security Reviewed

- Purpose: validate permissions, sharing, and data exposure safety.
- Required evidence: security findings and recommendation.
- Owner: Security Reviewer.
- Pass criteria: no unresolved critical or high risk.
- Block condition: unclear or unresolved security impact.

## Gate 5: QA Complete

- Purpose: validate acceptance criteria and edge coverage.
- Required evidence: QA checklist, test matrix, defects summary.
- Owner: QA.
- Pass criteria: acceptance criteria validated and major defects resolved.
- Block condition: blocking defects or incomplete validation.

## Gate 6: Release Ready

- Purpose: confirm deployability and rollback preparedness.
- Required evidence: manifest, deployment order, rollback plan, checklist.
- Owner: Release Manager.
- Pass criteria: release package and approvals are complete.
- Block condition: unknown dependencies or missing approvals.

## Gate 7: Post-deployment Validated

- Purpose: confirm expected behavior after deployment.
- Required evidence: post-deployment validation notes.
- Owner: QA and business validator.
- Pass criteria: critical scenarios pass in target environment.
- Block condition: critical scenario failures.

## Apex Refactoring Gates

### Analyzer Complete

- Purpose: confirm safe read-only analysis before any edit.
- Required evidence: analyzer report, interface map, dependency review, documented risks.
- Owner: `apex-analyzer`.
- Pass criteria: report exists and refactor prerequisites are clear.
- Block condition: class dependencies, scope, or security impact remain unclear.

### Refactor Approved

- Purpose: authorize the safe refactor scope.
- Required evidence: approved scope, allowed changes, forbidden changes acknowledged.
- Owner: human approver and `salesforce-orchestrator`.
- Pass criteria: explicit ACT MODE approval exists.
- Block condition: scope ambiguity or unapproved contract changes.

### Refactor Complete

- Purpose: verify the safe implementation is complete.
- Required evidence: refactor summary, changed file list, public interface preservation notes.
- Owner: `apex-senior-refactor`.
- Pass criteria: business behavior and public contracts remain unchanged with a minimal diff.
- Block condition: signature drift, business logic change, or scope expansion.

### Tests Hardened

- Purpose: confirm tests are meaningful after refactoring.
- Required evidence: test plan, tests added or updated, coverage target, scenario matrix.
- Owner: `apex-test-engineer`.
- Pass criteria: key nominal, edge, bulk, null, and exception scenarios are covered where applicable.
- Block condition: coverage-only tests or unresolved execution-path gaps.

### Security Reviewed

- Purpose: validate that the refactor did not worsen security posture.
- Required evidence: sharing, CRUD/FLS, dynamic SOQL, `@AuraEnabled`, and data exposure review.
- Owner: `salesforce-security-reviewer`.
- Pass criteria: no unresolved critical or high-risk findings.
- Block condition: unknown security impact or widened exposure.

### QA Approved

- Purpose: validate unchanged behavior and controlled scope.
- Required evidence: regression checklist, test results, scope validation notes.
- Owner: `salesforce-qa`.
- Pass criteria: behavior preserved, tests pass, and coverage does not regress materially.
- Block condition: behavior drift, failing tests, or unapproved scope expansion.

### Release Ready

- Purpose: prepare deployment artifacts only when deployment is needed.
- Required evidence: deployment need confirmed, rollback notes, release checklist.
- Owner: `salesforce-release-manager`.
- Pass criteria: release artifact package is complete and approved.
- Block condition: deployment requested without approvals or missing rollback preparation.
