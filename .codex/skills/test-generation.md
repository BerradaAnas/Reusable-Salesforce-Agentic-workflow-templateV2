# Skill: Test Generation

## Purpose

Generate a complete test strategy with clear separation across automated, manual, and UAT layers.

## Test layers

### Automated tests

- Apex unit and integration-style tests
- LWC Jest tests when UI logic changes

### Manual tests

- Admin/user execution paths in target environment
- Permission-sensitive flows

### UAT tests

- Business validation mapped to acceptance criteria
- Business-user observable outcomes

## Coverage expectations

- Positive scenarios
- Negative scenarios
- Edge cases
- Null and empty handling
- Bulk processing behavior
- Permission and sharing scenarios
- Regression-sensitive scenarios

## Output

- Acceptance criteria to test matrix
- Automated test cases
- Manual validation cases
- UAT scenario list
- Required test data
- Expected outcomes

## Guardrails

- Do not generate tests that only chase coverage.
- Do not rely on unmanaged org data unless approved.
