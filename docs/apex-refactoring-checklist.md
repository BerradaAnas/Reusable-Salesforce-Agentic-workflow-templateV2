# Apex Refactoring Checklist

## Before analysis

- [ ] Target class is identified.
- [ ] Refactoring reason is documented.
- [ ] Acceptance criteria or cleanup goals are clear.
- [ ] No deployment activity is requested in this repository.

## During analysis

- [ ] Orchestrator classification complete.
- [ ] Full class reviewed.
- [ ] Existing test class reviewed if present.
- [ ] LWC consumers checked.
- [ ] Apex callers checked.
- [ ] Metrics captured.
- [ ] Governor, security, maintainability, performance, and layering risks documented.

## Before refactor

- [ ] Analyzer report exists.
- [ ] Layering review complete.
- [ ] DM, EM, and SM existing classes identified.
- [ ] Human ACT MODE approval is explicit.
- [ ] Allowed changes are listed.
- [ ] Forbidden changes are acknowledged.

## During refactor

- [ ] Public/global signatures preserved.
- [ ] Business logic preserved.
- [ ] Sharing mode unchanged unless approved.
- [ ] `@AuraEnabled` wrapper properties preserved.
- [ ] Field/object API names preserved.
- [ ] Diff kept minimal and reviewable.

## After refactor

- [ ] Refactor summary written.
- [ ] Files changed are listed.
- [ ] Residual risks are documented.
- [ ] Rollback notes are captured.
- [ ] Security reviewed.
- [ ] QA complete.

## Test validation

- [ ] Test plan exists before code changes.
- [ ] Nominal scenarios covered.
- [ ] Null and empty scenarios covered where applicable.
- [ ] Bulk scenarios covered where applicable.
- [ ] Exception paths covered where applicable.
- [ ] Permission scenarios covered where applicable.
- [ ] Coverage target documented.

## Security validation

- [ ] Sharing mode review complete.
- [ ] CRUD/FLS review complete.
- [ ] Dynamic SOQL sanitized if applicable.
- [ ] No new sensitive fields exposed.
- [ ] Debug logging does not leak secrets.

## QA validation

- [ ] Public signatures unchanged.
- [ ] Business behavior unchanged.
- [ ] Tests pass.
- [ ] Coverage did not decrease.
- [ ] LWC consumers still compile.
- [ ] Scope did not expand without approval.

## Release readiness

- [ ] Security review completed.
- [ ] QA review completed.
- [ ] Deployment need confirmed.
- [ ] Rollback notes prepared.
- [ ] Release manager engaged only if deployment is needed.

## DML separation checklist

- [ ] DML found in controller.
- [ ] Target object identified.
- [ ] Existing DM found or new DM proposed.
- [ ] Existing Service or SM found or new Service proposed.
- [ ] Existing EM found if needed.
- [ ] Public controller method signature preserved.
- [ ] Wrapper contract preserved.
- [ ] DML moved to a bulk-safe DM method.
- [ ] Service orchestrates the transaction.
- [ ] Tests updated.
- [ ] Security reviewed.
- [ ] QA approved.
