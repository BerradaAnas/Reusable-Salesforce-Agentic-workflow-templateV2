# Skill: Quality Gates

## Purpose

Evaluate whether delivery can safely move to the next phase.

## Orchestrated Workflow Gates

Safe phases:

- Request classification
- File reading
- File search
- Metadata discovery
- Analysis
- Planning
- Report creation
- Read-only security review
- Read-only QA review
- Documentation draft

Unsafe phases:

- Code edit
- Metadata creation
- Metadata deployment
- Data mutation
- Destructive change
- Public contract change
- New architecture class creation
- Sharing/security behavior change
- Transaction behavior change

### Gate 1 - Intake Classified

Pass criteria:

- Request type identified
- Risk level identified
- Required workflow selected

### Gate 2 - Analysis Complete

Pass criteria:

- Analysis or plan produced
- Impact and risks documented
- Dependencies checked where relevant

### Gate 3 - Approval Received

Pass criteria:

- Correct approval phrase received
- Approved scope documented

### Gate 4 - Implementation Complete

Pass criteria:

- Files changed only within scope
- Changes summarized
- No deployment performed unless approved

### Gate 5 - Tests Complete

Pass criteria:

- Tests added or updated or gaps documented
- Relevant commands listed

### Gate 6 - Security Reviewed

Pass criteria:

- Security risks checked
- Findings documented
- No blocking issues unresolved

### Gate 7 - QA Complete

Pass criteria:

- Acceptance criteria validated
- Behavior preserved for refactors
- No unapproved scope expansion

### Gate 8 - Release Ready

Pass criteria:

- Manifest ready
- Rollback ready
- Deployment approval status clear

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
