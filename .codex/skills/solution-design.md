# Skill: Solution Design

## Purpose

Produce a safe Salesforce implementation plan with clear architecture choices and tradeoffs.

## Use when

- Ticket and acceptance criteria are ready for planning.
- Metadata discovery is complete or known gaps are documented.
- Human approval is needed before ACT MODE.

## Procedure

1. Restate business objective and acceptance criteria.
2. Propose architecture options (minimum two when feasible).
3. Evaluate tradeoffs for complexity, risk, maintainability, and release impact.
4. Recommend one approach and explain why.
5. Detail data model, automation, Apex, LWC, and permission impact.
6. Document security impact and required review depth.
7. Define automated tests, manual tests, and UAT impact.
8. Define deployment and rollback approach.
9. Capture open questions and no-go blockers.

## Output

- Problem statement
- Architecture options
- Recommended approach
- Tradeoffs
- Metadata impact
- Security impact
- Test impact
- Deployment impact
- Rollback strategy
- Open questions and blockers

## Guardrails

- Do not implement in design phase.
- Do not deploy.
- Do not assume unavailable environments.
