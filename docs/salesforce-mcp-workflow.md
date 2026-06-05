# Salesforce Codex MCP V2 Workflow

## Purpose

Define a controlled Salesforce delivery workflow using Codex agents, reusable skills, and Salesforce DX MCP discovery.

## Scope model

- Repository type: workflow/template package
- Primary usage: copied into Salesforce DX projects
- Default policy: production deployment forbidden unless explicitly approved

## End-to-end flow

Ticket
-> Orchestrator
-> Architect
-> Human approval
-> Developer
-> Security Reviewer
-> QA
-> Release Manager
-> Documentation
-> Manual deployment approval

## Workflow variants

### Standard delivery workflow

Ticket
-> Orchestrator
-> Architect
-> Human approval
-> Developer
-> Security Reviewer
-> QA
-> Release Manager
-> Documentation
-> Manual deployment approval

### Apex Refactoring Workflow

Ticket
-> Orchestrator
-> apex-analyzer
-> Human approval
-> apex-senior-refactor
-> apex-test-engineer
-> Security Reviewer
-> QA
-> Release Manager if needed
-> Documentation
-> Manual deployment approval

## Phase breakdown

1. Ticket intake and quality check
2. Complexity classification
3. Metadata discovery (relevant only)
4. Solution design and manifest draft
5. Human plan approval
6. ACT MODE implementation
7. Security review
8. QA validation
9. Release readiness preparation
10. Documentation completion
11. Manual deployment approval

## Approval gates

- Gate 1: Plan approved
- Gate 2: ACT MODE scope approved
- Gate 2A: Analyzer complete before Apex refactor edits
- Gate 3: Security sign-off when required
- Gate 4: QA sign-off
- Gate 5: Release readiness approved
- Gate 6: Deployment approval

## No-go triggers

- Acceptance criteria missing
- Metadata names unverified
- Security impact unknown
- Deployment target unclear
- Scope changed without approval
- Apex refactor requested without analyzer report
