# Skill: Apex Architecture Layering

## Purpose

Validate that Apex responsibilities stay aligned with the intended layered Salesforce architecture.

## Layer model

LWC -> Controller -> Service/SM -> Entity Manager/EM -> Data Manager/DM -> Database

## Rules

- LWC calls controllers only.
- Controllers expose `@AuraEnabled` APIs only.
- Controllers delegate business logic to services.
- Controllers must not contain DML.
- Controllers should not contain complex SOQL.
- Services orchestrate business rules and transactions.
- Services call EM and DM layers.
- EM handles object or entity-specific queries and aggregations.
- DM handles pure SOQL and DML.
- DM methods should accept `List` or `Set` collections where relevant.
- DM must not contain UI logic.
- Wrapper and DTO classes must preserve JSON contracts.
- Trigger handlers should remain bulk-safe.

## Detection checklist

- DML in Controller
- SOQL in Controller
- Controller directly calling DM
- Business logic in DM
- UI formatting in DM
- Wrapper property rename risk
- One-record DML methods
- Non-bulk-safe DM methods
- Service layer missing
- EM layer missing
- Existing class naming conventions

## Output

1. Current layer
2. Expected layer
3. Violations
4. Existing supporting classes
5. Missing supporting classes
6. Recommended movement
7. Risk level
8. Approval needed
