# Skill: Apex Test Hardening

## Purpose

Raise confidence in refactored Apex through meaningful, behavior-focused tests.

## Workflow

- Create a test plan before code.
- Prefer `@TestSetup` for reusable setup data.
- Use meaningful assertion messages.
- Use `Test.startTest()` and `Test.stopTest()`.
- Add bulk tests where applicable.
- Add null and empty input tests where applicable.
- Add exception path tests where applicable.
- Add permission scenario tests where applicable.
- Add callout mocks where applicable.
- Add batch tests where applicable.
- Add controller tests with `System.runAs()` where applicable.

## Naming convention

`[scenario]_[condition]_should[ExpectedResult]`

## Required output

- Test plan
- Scenarios covered
- Assertion strategy
- Coverage target
- Remaining gaps

## Guardrails

- Coverage without assertions is not acceptable.
- Do not modify production code unless explicitly approved.
- Do not deploy.
