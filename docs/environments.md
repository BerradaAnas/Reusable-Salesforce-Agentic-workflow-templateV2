# Environment Strategy

## Stage 1: Dev only

- One dev org
- Manual validation
- No deployment automation

## Stage 2: Dev + UAT

- Dev org
- UAT sandbox
- Release Manager agent required

## Stage 3: Dev + UAT + Prod readonly

- Production inspection only
- No production deploy

## Stage 4: Controlled production deployment

- Strict approval
- CI/CD
- Rollback plan
- Release Manager required

## MCP config recommendations

- Dev profile: primary working profile for `{{DEV_ORG_ALIAS}}`.
- UAT profile: validation profile for `{{UAT_ORG_ALIAS}}`.
- Prod-readonly profile: inspection-only profile for `{{PROD_ORG_ALIAS}}`.

Do not store real credentials in repository files.
