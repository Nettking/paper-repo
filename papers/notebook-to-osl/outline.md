# Draft outline

## 1. Introduction

- Digital Twin development requires operational knowledge, not only sensor data and architectures.
- Operator strategies are often implicit.
- Some strategies are learned through situated training rather than formal interviews.
- The paper proposes a method for capturing notes during training and transforming them into OSL candidates.

Possible contribution statement:

> This paper contributes a tool-supported situated elicitation method for transforming raw training notes into structured operator-strategy fragments for Digital Twin development.

## 2. Background and related work

Possible subsections:

1. Digital Twins in manufacturing
2. Human-in-the-loop Digital Twins
3. Operator knowledge and situated expertise
4. Requirements elicitation and contextual inquiry
5. Knowledge representation for modelling and DSLs

## 3. Problem framing

- Interviews and workshops can miss situated cues.
- Machine data does not explain operator interpretation.
- Raw notes are too unstructured for modelling.
- Formal models require premature abstraction if the intermediate step is missing.

## 4. Method: situated note capture

Describe the workflow:

1. Prepare training session.
2. Operator teaches researcher during normal or simulated work.
3. Researcher writes short notes on laptop.
4. Notes remain raw during the session.
5. Researcher reviews notes afterward.
6. Notes are annotated using the capture schema.
7. Selected notes become OSL candidate fragments.
8. Candidates are validated with operator/domain expert.

## 5. Annotation schema

Present the schema:

- cue
- condition
- interpretation
- action
- rationale
- exception
- uncertainty
- risk
- validation need
- responsible actor
- escalation path
- candidate OSL type

## 6. Illustrative CNC case

Use one or more sanitized examples:

- tool wear from sound/vibration
- abnormal machine behaviour
- part quality concern
- when to stop machine
- when to ask a more experienced operator

For each example:

1. raw note
2. annotation
3. OSL candidate
4. validation concern

## 7. Discussion

Discuss:

- why situated training reveals different knowledge than interviews
- how the schema preserves uncertainty
- how this supports OSL development
- limits of researcher interpretation
- need for operator validation
- ethical and industrial confidentiality concerns

## 8. Conclusion

Restate:

- situated training can be a productive elicitation setting
- raw notes need an intermediate annotation layer
- OSL candidates can be derived without forcing full formalization too early

## Possible limitations

- based on limited case material initially
- depends on operator willingness and teaching ability
- note capture may miss tacit embodied actions
- transformation may introduce researcher bias
- validation is required before formal modelling
