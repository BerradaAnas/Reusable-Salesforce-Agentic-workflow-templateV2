# Prompt Library

## Starting a ticket with Orchestrator

```text
Use salesforce-orchestrator in PLAN MODE for {{PROJECT_NAME}}.
Analyze this ticket, classify complexity, list required agents, required approval gates,
and the first next action.
```

## Architect plan mode

```text
Use salesforce-architect in PLAN MODE.
Create an implementation plan with metadata impact, security considerations,
test strategy, metadata manifest draft, and go/no-go recommendation.
```

## Developer act mode

```text
ACT MODE approved.
Use salesforce-developer to implement only the approved scope,
list changed files, update tests, and summarize risks.
```

## Security review

```text
Use salesforce-security-reviewer in REVIEW MODE.
Review CRUD/FLS, sharing, permissions, Apex/LWC exposure, and provide go/no-go.
```

## QA validation

```text
Use salesforce-qa in REVIEW MODE.
Validate acceptance criteria one by one with positive/negative/edge/permission scenarios.
```

## Release readiness

```text
Use salesforce-release-manager in RELEASE MODE.
Prepare manifest, deployment order, rollback plan, and release risks.
```

## Documentation generation

```text
Use salesforce-documentation to produce business summary, technical summary,
UAT guide, deployment notes, rollback, release notes, and known limitations.
```

## UAT defect triage

```text
Review these UAT defects and classify severity, root cause hypothesis,
required fix owner, and retest priority.
```

## Fix after QA

```text
ACT MODE approved for QA fixes only.
Implement only listed defects, update tests, and summarize file-level changes.
```

## Deployment checklist only

```text
Generate deployment checklist and rollback readiness only.
Do not implement code changes.
```

## Start Apex Refactoring

```text
Use salesforce-orchestrator.
We are starting an Apex refactoring task.
Target class: [ClassName]
Reason: [Reason]
Start with apex-analyzer only.
Do not modify code. Do not deploy.
```

## Approve Refactoring

```text
Use apex-senior-refactor.
ACT MODE approved.
Use the analyzer report at [path].
Refactor [ClassName] only within the approved scope.
Do not change business logic, public/global signatures, @AuraEnabled wrapper properties, or field/object API names.
Do not deploy.
```

## Test Hardening

```text
Use apex-test-engineer.
Create or improve tests for [ClassName] after refactoring.
Cover nominal, null, empty, bulk, exception, and permission scenarios where applicable.
Do not deploy.
```

## Security Review

```text
Use salesforce-security-reviewer.
Review the Apex refactor for sharing, CRUD/FLS, dynamic SOQL, @AuraEnabled exposure, and data leakage.
Do not modify files.
```

## QA Review

```text
Use salesforce-qa.
Validate the Apex refactor.
Confirm public signatures unchanged, behavior preserved, tests pass, and scope did not expand.
```

## Start DML Separation Refactor

```text
Use salesforce-orchestrator.

We are starting an Apex layered refactoring task.

Target controller:
[ControllerClass]

Goal:
Separate DML and complex SOQL from the controller into the proper Service/SM, EM, and DM layers.

Rules:
- Start with apex-analyzer only.
- Do not modify code.
- Do not deploy.
- Identify existing DM/EM/SM classes.
- Identify DML/SOQL inside the controller.
- Identify LWC consumers and Apex callers.
- Produce a layered refactoring plan.

Class path:
force-app/main/default/classes/[ControllerClass].cls
```

## Approve DML Separation Refactor

```text
Use apex-senior-refactor.

ACT MODE approved.

Use analyzer report:
[report path]

Approved scope:
- Move DML from [ControllerClass] into [Object]DM.
- Move business orchestration into [Object]Service or existing SM class.
- Preserve public controller methods.
- Preserve wrapper properties.
- Preserve behavior.
- Do not deploy.
```
