# Planned work: canonical Notebook-to-OSL method contract

Programme plan: `Nettking/phd-research/plans/method-osl-msh-alignment.md`  
Workstream: W1  
Status: ready for a parallel agent  
Date opened: 2026-08-02

## Mission

Publish one authoritative, versioned Notebook-to-OSL method contract that MSH and other tools can implement without interpreting competing prose definitions.

This repository owns the method. It does not own OSL semantics, MSH implementation, runtime recommendation authority, or the integrated tool-paper evaluation.

## Confirmed problem

The standalone `capture-schema.md` and the manuscript annotation-schema section currently differ in fields, lifecycle states, validation outcomes, confidentiality, and traceability. MSH cannot align correctly while both appear authoritative.

## Required output

Create a canonical contract covering:

1. capture sessions and scope/consent boundary;
2. immutable raw notes;
3. note selection;
4. annotation revisions;
5. clarification needs, questions, and responses;
6. operator/domain-expert validation events;
7. validation outcomes: accepted, corrected, narrowed, rejected, sensitive;
8. confidentiality and publication/use restrictions;
9. provisional versus model-ready criteria;
10. source and downstream traceability;
11. permitted lifecycle transitions;
12. machine-readable schemas or contract files.

## Suggested files

```text
papers/notebook-to-osl/contracts/notebook-to-osl-v1.yaml
papers/notebook-to-osl/contracts/raw-note.schema.json
papers/notebook-to-osl/contracts/strategy-fragment.schema.json
papers/notebook-to-osl/contracts/validation-event.schema.json
papers/notebook-to-osl/contracts/examples/
```

The exact layout may change if the repository already has a better convention, but there must be one clear canonical entry point.

## Scientific requirements

- Live capture remains low friction.
- Raw wording remains immutable and traceable.
- Annotation is an interpretation, not operator truth.
- Missing information remains explicit.
- Clarification and validation are distinct activities.
- A corrected or narrowed fragment preserves the previous interpretation and the reason for change.
- Sensitive or rejected fragments remain traceable but cannot silently become model-ready.
- OSL is one downstream target, not the sole justification for the method.
- The contract must not claim empirical validation that has not occurred.

## Compatibility requirements for MSH

The contract must give MSH enough information to implement:

- valid storage entities;
- required and optional fields;
- exact status values;
- permitted state transitions;
- eligibility rules for provisional and model-ready export;
- validation provenance;
- confidentiality/export restrictions;
- stable identifiers and revision history.

Do not design MSH forms or database classes here. Define the method semantics only.

## Acceptance criteria

- `capture-schema.md` and the manuscript no longer present conflicting schemas.
- One contract version is named and discoverable.
- Existing examples validate against the machine-readable schemas.
- Lifecycle transitions are explicit and testable.
- Validation actor, time, outcome, corrections/narrowing, and evidence are representable.
- Provisional and model-ready are distinguishable.
- The contract can be consumed by MSH without importing SysML syntax.
- Paper claims remain bounded to method design and available evidence.

## Files this agent may change

- Notebook-to-OSL method and schema files;
- the manuscript sections required to reconcile the method;
- focused validation scripts/tests and examples;
- repository metadata describing the method contract.

## Files and concepts this agent must not change

- `Nettking/systems-paper` OSL language semantics;
- MSH implementation or UI;
- `tool-repo` evaluation results;
- `phd-research` programme baseline except through a later explicit synchronization PR;
- unrelated papers or repository-wide formatting.

## Handoff to W3

The final PR must state:

- contract version;
- exact contract entry file;
- exact statuses and transitions;
- provisional and model-ready requirements;
- validation and confidentiality requirements;
- migration considerations for current MSH records;
- unresolved questions that MSH must not guess.

## Agent prompt

> Work on `Nettking/paper-repo`, branch from updated `main`, and read `docs/planned-work/method-osl-msh-alignment.md`. Implement only W1. Reconcile the competing Notebook-to-OSL schemas into one versioned, machine-readable method contract covering raw capture, annotation, clarification, validation, confidentiality, provenance, lifecycle transitions, and provisional/model-ready criteria. Preserve the method paper's independence from OSL and do not edit other repositories. Add focused validation for the contract and examples. Open a draft PR and do not merge.
