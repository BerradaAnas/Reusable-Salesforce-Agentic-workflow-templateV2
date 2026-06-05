# Skill: Apex Review

## Purpose

Review Apex for correctness, security, maintainability, and Salesforce runtime safety.

## Review checklist

- Bulkification for single, multiple, and empty inputs
- No SOQL in loops
- No DML in loops
- Sharing model correctness (`with sharing` or `inherited sharing` where appropriate)
- CRUD and FLS considerations
- User mode and system mode behavior risks
- Exposed method review (`@AuraEnabled`, `@InvocableMethod`, REST)
- SOQL injection and input validation
- Governor limit safety
- Null and empty collection handling
- Test quality and business-outcome assertions
- Bulk test expectations for trigger and service logic

## Output

- Findings by severity
- File references
- Required fixes
- Missing tests
- Residual risks

## Guardrails

- Do not modify files unless ACT MODE implementation is approved.
- Do not approve code that only optimizes for coverage.
