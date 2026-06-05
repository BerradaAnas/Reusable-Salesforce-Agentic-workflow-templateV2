# CRM-1047 Customer Priority Indicator

## Technical Summary

- Reuses `Account.CustomerPriority__c`.
- Calculates priority in `AccountTrigger` before insert and before update.
- Uses `AccountTriggerHandler` with no SOQL or DML in loops.
- Displays priority in the Account compact layout/header area.
- Keeps `customerPriorityBadge` available as a standard-compatible component without overriding the default Account page.
- Adds field access through `Customer_Success_User`, `Sales_Manager`, and Admin profile metadata.

## Priority Rules

| Rule                                                    | Result |
| ------------------------------------------------------- | ------ |
| `AnnualRevenue > 1000000` and `NumberOfEmployees > 500` | High   |
| `AnnualRevenue > 250000`                                | Medium |
| All other cases, including null values                  | Low    |

## Deployment Notes

1. Validate metadata against `dev-mcp`.
2. Deploy the CRM-1047 metadata package.
3. Assign `Customer_Success_User` to Customer Success users.
4. Assign `Sales_Manager` to Sales Managers.
5. Confirm `CustomerPriority__c` appears in the Account compact layout/header area.
6. Run `AccountTriggerHandlerTest`.

## Rollback Steps

1. Remove `CustomerPriority__c` from `Account.New_account_layout` if the header indicator should be hidden.
2. Deactivate `Account.High_Priority_Annual_Revenue`.
3. Remove `AccountTrigger` and `AccountTriggerHandler` from deployment scope.
4. Remove field permissions from the two permission sets if access should be reversed.
5. Keep `Account.CustomerPriority__c` because it existed before CRM-1047.

## UAT Scenarios

| Scenario             | Steps                                                                              | Expected Result                                                                      |
| -------------------- | ---------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------ |
| High priority        | Create or update Account with revenue `1000001` and employees `501`.               | Priority is `High`; Account header/compact area shows `Customer Priority`.           |
| Medium priority      | Create or update Account with revenue `250001` and employees below High threshold. | Priority is `Medium`; Account header/compact area shows `Customer Priority`.         |
| Low priority         | Create or update Account with revenue `250000` or blank revenue.                   | Priority is `Low`; Account header/compact area shows `Customer Priority`.            |
| Validation           | Try to save Account with priority `High` and revenue `999999`.                     | Save is blocked with the approved error message.                                     |
| Bulk processing      | Update 200 Accounts to revenue `1000001` and employees `501`.                      | All records save without governor-limit errors and become `High`.                    |
| Missing field access | View Account as a user without field access.                                       | LWC shows a friendly unavailable state and does not crash if placed on a page later. |
