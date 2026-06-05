# Skill: Apex Safe Refactoring

## Purpose

Guide minimal-risk Apex cleanup that preserves public contracts and business behavior.

## Preconditions

- Analyzer report exists and has been reviewed.
- ACT MODE approval is explicit.
- Target class and allowed scope are clear.
- Dependency search is complete before edits.
- Layer movement impact analysis is complete before moving logic across Controller, Service, EM, and DM layers.

## Required checks

- Preserve every public/global signature.
- Preserve all `@AuraEnabled` wrapper property names used in JSON.
- Preserve field and object API names in SOQL.
- Preserve sharing mode unless explicitly approved.
- Preserve business-critical DML order unless explicitly approved.
- Preserve transaction boundaries unless explicitly approved.
- Preserve exception behavior unless explicitly approved.
- Preserve behavior when moving logic between layers.
- Keep the diff minimal and reviewable.

## Safe refactor types

- Move SOQL out of loops.
- Move DML out of loops.
- Initialize collections safely.
- Add intermediate variables for readability.
- Rename private variables only.
- Extract duplicated private logic.
- Replace repeated string concatenation with `List<String>` and `String.join()`.
- Sanitize dynamic SOQL inputs with `String.escapeSingleQuotes()`.
- Improve swallowed exception handling when behavior is preserved.
- Move DML from controllers into DM methods through Service or SM orchestration.
- Move complex controller SOQL into EM or DM methods.
- Introduce service-layer orchestration where inline controller logic should be extracted.
- Add tests before and after high-risk refactors where possible.
- Create tests before high-risk refactors where possible if no useful tests exist.

## Forbidden changes

- Public/global signature changes.
- `@AuraEnabled` wrapper property renames.
- Business condition changes.
- Field/object API name changes.
- Sharing mode changes without approval.
- Transaction boundary changes without approval.
- Exception behavior changes without approval.
- Deleting public/global methods.
- Deployment.

## Output

- Before and after summary
- Public interface preservation statement
- Minimal diff summary
- Rollback notes
