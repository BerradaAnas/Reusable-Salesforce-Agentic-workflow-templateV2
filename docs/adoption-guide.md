# Adoption Guide

## How to install the template

1. Copy this template repository into your Salesforce DX project.
2. Run `scripts/install-workflow.sh /path/to/project`.
3. Review installed `.codex`, `docs`, `.github`, and `AGENTS.md` files.

## How to customize placeholders

1. Replace placeholders in docs and config files:
- `{{PROJECT_NAME}}`
- `{{DEV_ORG_ALIAS}}`
- `{{UAT_ORG_ALIAS}}`
- `{{PROD_ORG_ALIAS}}`
- `{{HAS_UAT}}`
- `{{HAS_PROD}}`
- `{{DEPLOYMENT_POLICY}}`
- `{{DEFAULT_BRANCH}}`
- `{{TEAM_NAME}}`
2. Keep unresolved placeholders visible until confirmed.

## How to configure Codex MCP

1. Keep `.codex/config.toml` project-specific.
2. Use `.codex/config.toml.example` as baseline.
3. Ensure org aliases map to approved environments.
4. Keep production profiles readonly unless governance is approved.

## How to run first ticket

1. Start with Orchestrator in PLAN MODE.
2. Route to Architect for plan and manifest draft.
3. Get human approval.
4. Move to Developer in ACT MODE.
5. Run Security, QA, Release Manager, then Documentation.

## How to add to an existing Salesforce DX project

1. Run installer targeting the existing project root.
2. Merge AGENTS guidance with project-specific rules.
3. Keep existing `.codex/config.toml` values.
4. Adopt quality gates before broader rollout.

## How to train a team

1. Train on PLAN vs ACT vs REVIEW vs RELEASE modes.
2. Use one ticket walkthrough with all agent handoffs.
3. Enforce quality gate evidence for every ticket.

## Recommended rollout

- Week 1: dev-only
- Week 2: first 3 tickets
- Week 3: add quality gates
- Week 4: add UAT

## Common mistakes

- Too many agents too soon
- Skipping PLAN MODE
- Deploying too early
- Letting AI guess metadata
- Missing human approval
