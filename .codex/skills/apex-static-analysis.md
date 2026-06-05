# Skill: Apex Static Analysis

## Purpose

Perform consistent, read-only Apex analysis before any refactoring work starts.

## Checklist

- Read the full class.
- Identify the class type and architectural layer.
- Count public and private methods.
- Count SOQL and DML statements.
- Detect SOQL or DML inside loops.
- Detect non-bulkified methods.
- Detect sharing mode.
- Detect dynamic SOQL risks.
- Detect FLS/CRUD gaps.
- Detect long methods.
- Detect complexity and deep nesting.
- Detect dead code.
- Detect duplication.
- Detect unclear naming.
- Detect swallowed exceptions.
- Detect non-selective queries.
- Detect string concatenation inside loops.
- Detect uninitialized collections.
- Detect architecture layer violations.

## Output

- Metrics
- Findings
- Severity
- Evidence
- Suggested fix
- No-go items

## Guardrails

- Read-only for production Apex and tests.
- Do not deploy.
- Escalate unclear security impact as a blocker.
