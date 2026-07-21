# Agent Instructions

This repository is the situated-elicitation pillar of the PhD research system coordinated in [Nettking/phd-research](https://github.com/Nettking/phd-research).

Before making a conceptual, methodological, evidence, framing, or submission-status change:

1. Read `Nettking/phd-research/research-map.yaml`.
2. Read `Nettking/phd-research/dependency-rules.yaml`.
3. Check whether the change affects `Nettking/systems-paper` or `Nettking/evo-repo`.
4. Do not silently propagate an uncertain semantic change to another paper.
5. Update `Nettking/phd-research/status/current-status.yaml` when the paper state changes.
6. Add meaningful research progress to the relevant monthly LaTeX file in `Nettking/PhD-Diary` when required by the dependency rules.

Do not create a separate diary inside this repository or inside `phd-research`.

This repository owns:

- the situated elicitation method;
- the field-note capture workflow;
- the note-to-strategy annotation schema;
- clarification and validation of candidate strategy fragments;
- model-readiness criteria for captured fragments.

`Nettking/systems-paper` owns the current OSL representation proposal. `Nettking/evo-repo` owns the emerging evolution and governance research. Keep these contribution boundaries explicit.

## PDF build contract

- Keep the root `paper-build.json` aligned with the current manuscript entry file and generated PDF.
- The canonical local check is `make paper`.
- After manuscript, bibliography, figure, or template changes, confirm that `papers/notebook-to-osl/manuscript/main.pdf` builds without unresolved inputs or citations.
- Do not commit generated build-cache files merely to make the central builder succeed.
- `Nettking/phd-research/scripts/build_papers.py` must be able to clone the repository and build it without relying on files outside the repository.
