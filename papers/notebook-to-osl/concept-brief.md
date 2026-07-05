# Concept brief

## Problem

Digital Twin projects in manufacturing often require knowledge that is not available in formal process descriptions, sensor streams, or machine documentation. Operators know how to interpret sounds, vibrations, delays, exceptions, machine behaviour, tooling conditions, and context-specific warning signs. However, this knowledge is difficult to capture because it is often expressed during work rather than in formal interviews.

## Proposed approach

The researcher participates in an apprenticeship-like training situation. A CNC operator is asked to teach the researcher how the process is understood and handled in practice. During this training, the researcher writes short, low-friction notes on a laptop. The notes are intentionally raw at first, because the priority is to stay present in the training situation.

After the session, the researcher reviews the notes in an application. Each note can be selected and annotated. The annotation transforms the note into a structured operator-strategy fragment. The fragment can later be mapped to an Operator Strategy Language (OSL) candidate.

## Example flow

Raw note:

> Operator says a sharper cutting sound can indicate tool wear, but only for some materials.

Annotated fragment:

| Field | Value |
|---|---|
| Cue | Sharper cutting sound |
| Interpretation | Possible tool wear |
| Context | Material-dependent |
| Action | Inspect tool if persistent |
| Uncertainty | Not always valid |
| Validation need | Confirm with operator |

OSL candidate:

```text
strategy ToolWearSoundMonitoring {
  cue: sharper_cutting_sound
  context: material_dependent
  interpretation: possible_tool_wear
  confidence: uncertain
  recommended_action: inspect_tool_if_persistent
  validation_required: operator_confirmation
}
```

## Research contribution

The paper should not be presented as a software tool paper only. The tool is a research instrument. The main contribution is the method for transforming situated training notes into structured operator strategy knowledge that can support Digital Twin modelling.

## Boundary

This paper should not try to deliver the full OSL, a complete CNC Digital Twin, or a full SysML v2 integration. Those are later or parallel papers. This paper should focus on the elicitation and transformation workflow.
