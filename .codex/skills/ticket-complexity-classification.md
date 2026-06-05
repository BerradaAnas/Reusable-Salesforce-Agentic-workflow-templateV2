# Skill: Ticket Complexity Classification

## Purpose

Classify Salesforce ticket complexity so the correct agents, gates, and controls are applied.

## Complexity levels

### XS

- Documentation or simple configuration only
- No code
- Low risk

### S

- One object, field, layout, or validation rule
- No automation or complex security

### M

- Apex, LWC, Flow, or multiple metadata components
- Tests required
- Security review recommended

### L

- Multiple objects, automation, permissions, integrations, or release sequencing
- Security review required
- Release Manager required

### XL

- Architecture-level change
- Cross-cloud, integration, data migration, production impact, or multiple teams
- Requires Architect, Security Reviewer, Release Manager, and manual planning

## Classification process

1. Review metadata breadth and coupling.
2. Evaluate automation and code impact.
3. Evaluate permission and data exposure impact.
4. Evaluate release sequencing and rollback complexity.
5. Assign highest matching complexity level.

## Output

- Complexity level
- Reason
- Required agents
- Required gates
- Risks
