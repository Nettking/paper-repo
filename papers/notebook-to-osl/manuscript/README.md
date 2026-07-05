# Manuscript draft

This folder contains the first LaTeX draft of the Notebook-to-OSL paper.

## Target venue

Primary target: **Advanced Engineering Informatics**.

The draft uses Elsevier's `elsarticle` class because the target venue is published by Elsevier and accepts LaTeX submissions. This is a working draft, not a submission-ready manuscript.

## Compile

From this folder:

```bash
pdflatex main.tex
bibtex main
pdflatex main.tex
pdflatex main.tex
```

Or with latexmk:

```bash
latexmk -pdf main.tex
```

## Current contents

```text
manuscript/
├── main.tex
├── highlights.tex
├── references.bib
├── figures/
│   └── workflow.tikz
└── sections/
    ├── 01_introduction.tex
    ├── 02_background.tex
    ├── 03_research_design.tex
    ├── 04_method.tex
    ├── 05_annotation_schema.tex
    ├── 06_illustrative_case.tex
    ├── 07_discussion.tex
    └── 08_conclusion.tex
```

## Important TODOs before journal submission

- Replace placeholder co-author information.
- Verify all references and DOIs.
- Add empirical material from actual/simulated CNC training.
- Add operator/domain-expert validation results.
- Decide whether OSL syntax should remain illustrative or align with the formal OSL paper.
- Confirm industrial confidentiality boundaries before adding any real notes.
- Review and revise the generative AI declaration according to the journal's current policy.
