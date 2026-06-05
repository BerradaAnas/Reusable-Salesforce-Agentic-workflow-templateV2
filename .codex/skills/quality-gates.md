# Skill: Quality Gates

## Purpose

Evaluate whether delivery can safely move to the next phase.

## Gates

### Before planning complete

- Ticket has business context
- Acceptance criteria exist
- Metadata impact identified
- Security impact identified
- Test strategy drafted

### Before ACT MODE

- Human approval received
- Scope is clear
- Files and components approved

### Before QA

- Implementation summary exists
- Tests added or updated
- Static analysis considered
- No unapproved scope expansion

### Before release

- Deployment target confirmed
- Metadata manifest ready
- Rollback plan ready
- UAT scenarios ready
- Approval received

## Apex Refactoring Quality Gates

### Gate A - Analyzer Complete

- Analyzer report exists
- Public methods mapped
- LWC and Apex consumers checked
- Risks documented

### Gate B - Refactor Approved

- Human approval received
- Allowed changes listed
- Forbidden changes acknowledged

### Gate C - Refactor Complete

- Public/global signatures unchanged
- Business logic unchanged
- Minimal diff
- Report updated

### Gate D - Tests Hardened

- Existing tests run
- New or updated tests added where needed
- Coverage target documented
- Edge cases covered

### Gate E - Security/QA Review

- Security reviewer completed
- QA completed
- No blocking findings

## Output

- Gate name
- Status: Pass, Fail, or Blocked
- Reason
- Required action
