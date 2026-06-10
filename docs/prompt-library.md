# Prompt Library

## Generic Orchestrator Prompt

```text
Use salesforce-orchestrator.

Task:
[Describe what you want]

Rules:
- Treat this as a work intake request.
- Classify the request type.
- Choose the correct workflow.
- Delegate to specialist agents internally.
- Continue automatically through safe read-only/review phases.
- Stop before code edits, metadata creation, deployment, destructive changes, or data mutation.
- Do not deploy unless explicitly approved.
```

## Apex DML Separation Prompt

```text
Use salesforce-orchestrator.

Task:
Refactor [ControllerClass] to separate DML and complex SOQL from the controller into Service/SM, EM, and DM layers.

Rules:
- Treat this as Apex layered refactoring.
- Start with analysis.
- Delegate internally.
- Do not modify code before ACT MODE approval.
- Preserve public method signatures.
- Preserve wrapper JSON properties.
- Preserve behavior.
- Do not deploy.
```

## Continue After Approval

```text
ACT MODE approved.
Continue the current orchestrated workflow.
Stay within the approved scope.
Do not deploy.
```

## Deployment Approval

```text
Deployment approved for [target org].
Deploy only the approved components.
Run post-deployment validation.
```

## Architecture Read

```text
Use salesforce-orchestrator.
Read AGENTS.md and .codex/agents.
Do not modify files.
Tell me the available workflows and approval gates.
```
