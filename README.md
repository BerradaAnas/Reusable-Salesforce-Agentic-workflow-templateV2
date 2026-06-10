# Reusable Salesforce Codex MCP Workflow Template

## What This Is 📦

This repository is a reusable workflow/template package for Salesforce delivery with Codex.

Use it to add a structured agent workflow to a Salesforce DX project.

It gives you:

- a single front door: `salesforce-orchestrator`
- reusable specialist agents
- reusable skills
- approval gates
- docs, checklists, and install scaffolding

## What This Is Not 🚫

This repository is not:

- a Salesforce metadata package
- a deployment tool
- a CI/CD pipeline
- a production automation framework

## Single Entry Point Orchestration 🎯

The user talks to `salesforce-orchestrator`.

The orchestrator classifies the request and coordinates specialist agents internally.

The user does not need to manually call:

- `apex-analyzer`
- `salesforce-developer`
- `apex-test-engineer`
- `salesforce-security-reviewer`
- `salesforce-qa`
- `salesforce-release-manager`
- `salesforce-documentation`

## Every Prompt As Work Intake 🧭

Every prompt is treated as potential work intake.

The orchestrator decides whether the request is:

- a question
- a feature
- a bug
- a refactor
- a performance investigation
- a security review
- a QA task
- a release task
- a documentation task

## Prompt-Based Orchestration Vs Runtime Multi-Agent System 🧠

This template provides prompt-based orchestration through Codex and project instructions.

It can apply or spawn specialist behavior where supported by Codex.

It is not a separate multi-process runtime.

A future version can add a runner script or MCP-based orchestrator.

## Apex Layered Refactoring 🏗️

The workflow supports separating DML and complex SOQL from controllers into Service/SM, EM, and DM layers.

Target architecture:

```text
LWC -> Controller -> Service/SM -> EM -> DM -> Database
```

## Baby-Step Install Tutorial 👶

### Stage 1 - Choose your target project

Pick the Salesforce DX project where you want this workflow installed.

Example target:

```bash
/path/to/your-sfdx-project
```

### Stage 2 - Move into this template repository

From this repository, run:

```bash
pwd
```

You should be inside the workflow template repo before using the installer.

### Stage 3 - Run the installer

Run:

```bash
./scripts/install-workflow.sh /path/to/your-sfdx-project
```

What this does:

- copies `AGENTS.md`
- copies `.codex/agents/`
- copies `.codex/skills/`
- copies `docs/`
- copies GitHub templates when present
- preserves an existing `.codex/config.toml`
- backs up an existing `AGENTS.md`

### Stage 4 - Open the target project

After install, open your Salesforce DX project and confirm these paths exist:

- `AGENTS.md`
- `.codex/config.toml.example`
- `.codex/agents/`
- `.codex/skills/`
- `docs/`

### Stage 5 - Replace placeholders

Update these placeholders in your target project:

- `{{PROJECT_NAME}}`
- `{{DEV_ORG_ALIAS}}`
- `{{UAT_ORG_ALIAS}}`
- `{{PROD_ORG_ALIAS}}`
- `{{HAS_UAT}}`
- `{{HAS_PROD}}`
- `{{DEPLOYMENT_POLICY}}`
- `{{DEFAULT_BRANCH}}`
- `{{TEAM_NAME}}`

### Stage 6 - Start with the orchestrator

Your first safe prompt should be:

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

## Fast Install Summary ⚡

1. Clone or copy this repo.
2. Run `./scripts/install-workflow.sh /path/to/your-sfdx-project`.
3. Replace placeholders.
4. Start with `salesforce-orchestrator`.

## Included Structure 🗂️

```text
.codex/
  agents/
  skills/
  config.toml.example
docs/
scripts/
.github/
AGENTS.md
```

## Recommended First Workflow 🔄

```text
User Request
-> salesforce-orchestrator
-> Classification
-> Safe analysis
-> Approval gate
-> Implementation or refactor
-> Tests
-> Security
-> QA
-> Release or docs
```

## Safety Model 🔐

- Start in PLAN MODE.
- Unsafe work requires explicit approval.
- Do not deploy unless explicitly approved.
- Never guess metadata names.
- Stop when security impact is unclear.

## Validation 🧪

Use [docs/orchestrator-validation-checklist.md](/Users/aberrada/Desktop/Arkx Salesforce /D&A/Reusable-Salesforce-Agentic-workflow-template/docs/orchestrator-validation-checklist.md) after install.

## Useful Docs 📚

- [docs/prompt-library.md](/Users/aberrada/Desktop/Arkx Salesforce /D&A/Reusable-Salesforce-Agentic-workflow-template/docs/prompt-library.md)
- [docs/salesforce-mcp-workflow.md](/Users/aberrada/Desktop/Arkx Salesforce /D&A/Reusable-Salesforce-Agentic-workflow-template/docs/salesforce-mcp-workflow.md)
- [docs/apex-refactoring-workflow.md](/Users/aberrada/Desktop/Arkx Salesforce /D&A/Reusable-Salesforce-Agentic-workflow-template/docs/apex-refactoring-workflow.md)
