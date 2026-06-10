# Skill: Apex DML Separation

## Purpose

Move DML operations out of Apex Controller classes into Data Manager classes through Service/SM orchestration.

## Rules

- Detect `insert`, `update`, `delete`, `upsert`, and `merge` in controllers.
- Determine the target object for each DML operation.
- Search for an existing DM class for the object.
- Search for existing EM, SM, and Service classes before proposing new ones.
- If a DM exists, add or reuse a bulk-safe DML method.
- If a DM does not exist, propose a new DM class but do not create it without approval.
- The Controller must call Service/SM.
- Service/SM must call DM.
- DM must perform DML.
- Preserve transaction behavior.
- Preserve exception behavior unless explicitly approved.
- Preserve controller public method signatures.
- Preserve the LWC contract.

## Recommended pattern

```apex
public static ReturnType methodName(InputWrapper input) {
    return ObjectService.methodName(input);
}
```

```apex
public static ReturnType methodName(InputWrapper input) {
    List<Object__c> records = ObjectMapper.toRecords(input);
    ObjectDM.updateRecords(records);
    return ObjectMapper.toResponse(records);
}
```

```apex
public static void updateRecords(List<Object__c> records) {
    if (records == null || records.isEmpty()) {
        return;
    }
    update records;
}
```

## Output

- DML found
- Current location
- Target object
- Existing DM class
- Existing EM class
- Existing Service class
- Required new or updated methods
- Approval required
- Refactor plan
