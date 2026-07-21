LATEXMK=latexmk -pdf -interaction=nonstopmode -halt-on-error -file-line-error
MANUSCRIPT_DIR=papers/notebook-to-osl/manuscript

.PHONY: paper pdf clean

paper:
	cd $(MANUSCRIPT_DIR) && $(LATEXMK) main.tex

pdf: paper

clean:
	cd $(MANUSCRIPT_DIR) && latexmk -C main.tex
