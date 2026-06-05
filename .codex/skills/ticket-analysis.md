# Skill: Ticket Analysis

## Purpose

Transform a Salesforce ticket into a clear, approval-ready delivery scope.

## Use when

- Business context is incomplete.
- Acceptance criteria are unclear or missing.
- Scope, dependencies, or risks are uncertain.

## Procedure

1. Capture ticket ID, title, requester, and source.
2. Extract business context: why this change matters, who is affected, and expected business outcome.
3. Draft or validate the user story.
4. Extract acceptance criteria and check quality:
- Specific and testable
- Observable expected outcome
- Clear preconditions
- Clear boundaries of scope
5. Separate in-scope and out-of-scope work.
6. Identify assumptions, dependencies, and risks.
7. Track open questions with owners and required resolution.
8. Trigger no-go if acceptance criteria are missing or non-testable.

## Output

- Ticket summary
- Business context
- User story
- Acceptance criteria with quality assessment
- Scope and out-of-scope
- Assumptions and dependencies
- Open questions and required owners
- No-go status when criteria are missing

## Guardrails

- Do not implement.
- Do not deploy.
- Do not treat assumptions as facts.
