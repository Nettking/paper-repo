# Capture schema

This file defines the first version of the annotation schema for transforming raw notes into OSL candidate fragments.

## Raw note fields

| Field | Purpose |
|---|---|
| `note_id` | Stable identifier for the raw note. |
| `timestamp` | When the note was captured. |
| `raw_text` | The original note written during training. |
| `setting` | Where the note was captured, e.g. machine, workstation, training context. |
| `speaker_role` | Operator, researcher, engineer, maintainer, supervisor, etc. |
| `confidence_raw` | How confident the researcher is that the note was understood correctly. |

## Annotation fields

| Field | Purpose |
|---|---|
| `cue` | What the operator notices, e.g. sound, vibration, visual mark, timing, alarm, tool behaviour. |
| `condition` | Situation in which the cue matters. |
| `interpretation` | What the cue may mean. |
| `action` | What the operator does or considers doing. |
| `rationale` | Why that action makes sense. |
| `exception` | When the rule does not apply. |
| `uncertainty` | What is unknown, context-dependent, or disputed. |
| `risk` | What may happen if the cue/action is ignored. |
| `validation_need` | What must be checked with the operator or another expert. |
| `responsible_actor` | Who acts or decides. |
| `escalation_path` | Who is contacted if the issue cannot be resolved locally. |
| `candidate_osl_type` | Candidate type in OSL, e.g. cue, rule, strategy, intervention, validation gate. |

## Status values

| Status | Meaning |
|---|---|
| `raw` | Captured during training, not yet interpreted. |
| `annotated` | Researcher has added structured fields. |
| `needs-validation` | Needs operator/domain expert check. |
| `validated` | Confirmed by operator/domain expert. |
| `formalized` | Converted to an OSL candidate. |
| `discarded` | Not relevant, unclear, duplicate, or unsafe to use. |

## Example annotation

```yaml
note_id: N-001
status: annotated
raw_text: "Sharper cutting sound can mean the tool is wearing, but it depends on material."
cue: sharper cutting sound
condition: during cutting, material-dependent
interpretation: possible tool wear
action: inspect tool if the sound persists
rationale: tool wear can reduce quality and increase risk of process problems
exception: not reliable for all materials
uncertainty: cue is experience-based and not always valid
risk: poor surface finish or tool failure
validation_need: confirm with operator during review
responsible_actor: machine operator
escalation_path: experienced operator or maintenance
candidate_osl_type: strategy
```
