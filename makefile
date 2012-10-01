S=slides

all: $S.pdf

$S.pdf: *.tex reveal-simple.sty makefile img/*
	latexmk -bibtex -enc -etex -e '$$latex=q/xelatex %O -shell-escape %S/' $S.tex

clean:
	rm -f *.aux *.toc *. *.bbl *.blg *.log *.nav *.out *.snm *.vrb *_latexmk *.fls *.pyg
