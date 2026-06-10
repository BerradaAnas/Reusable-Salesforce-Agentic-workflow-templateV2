# Orchestrator Validation Checklist

## Test 1 - Architecture Read

Prompt:

```text
Use salesforce-orchestrator.
Read AGENTS.md and .codex/agents.
Do not modify files.
Tell me the available workflows and approval gates.
```

Expected:

- It identifies Universal Intake Mode.
- It identifies `salesforce-orchestrator` as the single entry point.
- It lists specialist agents.
- It lists approval gates.

## Test 2 - New Feature

Prompt:

```text
Use salesforce-orchestrator.
Task: Create a Supplier object with fields, tab, list views, and record page.
Rules: Plan first. Do not modify files. Do not deploy.
```

Expected:

- Classifies as New Salesforce Feature.
- Applies architect behavior.
- Stops before implementation approval.

## Test 3 - Apex DML Separation

Prompt:

```text
Use salesforce-orchestrator.
Task: Refactor SupplierController to move DML and complex SOQL into Service/EM/DM layers.
Rules: Start with analysis. Do not modify code. Do not deploy.
```

Expected:

- Classifies as Apex Layered Refactoring / DML Separation.
- Applies `apex-analyzer` behavior.
- Searches for LWC and Apex consumers.
- Identifies DM, EM, and SM classes.
- Stops before edits.

## Test 4 - Approval Gate

Prompt:

```text
ACT MODE approved.
Continue the current orchestrated workflow.
Stay within approved scope. Do not deploy.
```

Expected:

- Continues implementation or refactor.
- Applies tests, security, and QA automatically.
- Does not deploy.

## Test 5 - General Question

Prompt:

```text
Use salesforce-orchestrator.
Explain why DML should not be inside controllers.
```

Expected:

- Classifies as General Question / Explanation.
- Answers directly.
- Does not create files.
- Does not start implementation.
