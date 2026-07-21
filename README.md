# Paper Repository

This repository is for developing research paper ideas into publishable manuscripts.

The repository is organized around paper folders. Each folder should contain the idea, target venues, research questions, required knowledge, notes, outlines, and later manuscript files.

## Structure

```text
paper-repo/
├── Makefile
├── paper-build.json
├── papers/
│   └── notebook-to-osl/
│       ├── README.md
│       ├── paper.yaml
│       ├── concept-brief.md
│       ├── venue-strategy.md
│       ├── knowledge-base.md
│       ├── capture-schema.md
│       ├── outline.md
│       ├── notes/
│       │   └── README.md
│       └── manuscript/
│           ├── main.tex
│           ├── highlights.tex
│           ├── references.bib
│           ├── figures/
│           └── sections/
└── templates/
    └── paper-folder/
        ├── README.md
        └── paper.yaml
```

## Build the current paper

From the repository root:

```bash
make paper
```

Or directly:

```bash
cd papers/notebook-to-osl/manuscript
latexmk -pdf -interaction=nonstopmode -halt-on-error -file-line-error main.tex
```

The generated manuscript is:

```text
papers/notebook-to-osl/manuscript/main.pdf
```

The root-level `paper-build.json` provides the same build information to the multi-paper build tool in `Nettking/phd-research`. That tool can pull the latest repository version and collect this PDF together with the other PhD papers.

## Paper folder workflow

Each paper folder should answer four questions:

1. What is the paper about?
2. What is the intended contribution?
3. Where could it be published?
4. What knowledge, references, examples, and empirical material are needed?

## Current paper ideas

| Folder | Working title | Status |
|---|---|---|
| `papers/notebook-to-osl` | From Situated Field Notes to Operator Strategy Models | Strengthened first draft; empirical work still required |

## Suggested status values

- `idea-captured`
- `literature-search`
- `outline`
- `drafting`
- `internal-review`
- `submitted`
- `revision`
- `published`
