.PHONY: pdf

all: pdf
# all: pdf with_notes handouts handouts_print handouts_space clean

pdf: 20200715_cns_research.tex
	latexmk -pdf -pdflatex="pdflatex -interactive=nonstopmode" -use-make 20200715_cns_research_presentation.tex

clean:
	rm -fv *.aux *.bbl *.blg *.log *.nav *.out *.snm *.toc *.dvi *.vrb *.bcf *.run.xml *.cut *.lo*
	latexmk -c
