# Skill: Salesforce Implementation

## Purpose

Implement approved Salesforce work with strict scope and file discipline.

## Use when

- ACT MODE is explicitly approved.
- Scope is approved and traceable to ticket criteria.

## Scope control

- Restate approved scope before edits.
- Modify only approved files and components.
- Reject scope expansion unless new approval is granted.

## File change discipline

- Keep changes minimal and traceable.
- Avoid opportunistic refactors.
- Preserve unrelated existing behavior.
- Summarize every changed file and reason.

## Test update expectations

- Add or update automated tests for behavior changes.
- Cover positive, negative, edge, and permission paths when relevant.
- Map tests back to acceptance criteria.

## Guardrails

- Do not deploy by default.
- Do not include destructive changes unless explicitly approved.
- Do not guess metadata names.

## Output

- Approved scope implemented
- Files changed and reason
- Test updates
- Remaining risks and manual validation steps
