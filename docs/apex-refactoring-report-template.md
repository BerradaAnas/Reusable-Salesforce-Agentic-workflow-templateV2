# Apex Refactoring Report Templates

## Analysis report template

```md
# Rapport d'Analyse - [ClassName].cls

**Date**:
**Analyste**: Agent apex-analyzer
**Statut**:

## 1. Vue d'ensemble

| Metrique | Valeur |
|----------|--------|
| Lignes totales | |
| Type | |
| Couche | |
| Sharing mode | |
| Classe de test | |
| Couverture estimee | |
| Methodes publiques | |
| Methodes privees | |

## 2. Interface publique critique

| Methode | Signature | Consommateurs LWC | Consommateurs Apex | Risque si change |
|---------|-----------|-------------------|--------------------|------------------|

## 3. Problemes identifies

### Governor Limits
### Security
### Quality / Maintainability
### Performance
### Architecture Layering

## 4. Score de qualite

| Dimension | Score /10 | Justification |
|-----------|-----------|---------------|
| Governor Limits | | |
| Security | | |
| Maintainability | | |
| Tests | | |
| Architecture | | |
| Global Score | | |

## 5. Recommandations par priorite

### Action immediate
### Prochain sprint
### Amelioration continue

## 6. Decisions necessaires

| Question | Contexte | Decision attendue |
|----------|----------|-------------------|

## 7. Prochaines etapes

- [ ] Validate report
- [ ] Run apex-senior-refactor
- [ ] Run apex-test-engineer
- [ ] Run QA/security validation
```

## Refactor summary template

```md
# Refactor Summary - [ClassName].cls

## Target class

## Analyzer report used

## Approved scope

## Public interface preserved

## Files changed

## Safe refactors applied

## Business logic preservation notes

## Tests to run

## Risks remaining

## Rollback notes

## Next agent recommendation
```

## Test summary template

```md
# Test Summary - [ClassName].cls

## Class under test

## Existing test class

## Test plan

## Tests added or updated

## Scenarios covered

## Coverage target

## Commands to run

## Remaining test gaps
```

## QA and security summary template

```md
# QA and Security Summary - [ClassName].cls

## Public signatures unchanged

## Business behavior unchanged

## Coverage impact

## LWC consumer impact

## Sharing / CRUD / FLS review

## Dynamic SOQL / exposure review

## Findings

## Go / no-go recommendation
```
