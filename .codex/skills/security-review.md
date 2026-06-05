# Skill: Security Review

## Purpose

Evaluate Salesforce solution security before release recommendation.

## Security checklist

- CRUD
- FLS
- Sharing model
- `with sharing` and `inherited sharing` usage
- Exposed Apex methods and endpoints
- SOQL injection risk
- User mode and system mode behavior
- LWC exposed data and client visibility
- Guest and community access risks
- Permission set and profile exposure
- Secrets handling and token exposure
- Named credentials usage and scope
- Sensitive data handling
- Debug log leakage risk
- Field visibility and object access

## Output

- Critical findings
- High findings
- Medium findings
- Low findings
- Required fixes
- Approval status

## Guardrails

- Do not approve when security impact is unknown.
- Do not deploy.
