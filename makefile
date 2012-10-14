S=slides

all: $S.pdf

$S.pdf: *.tex apple-keynote.sty makefile
	latexmk -bibtex -enc -etex -e '$$latex=q/xelatex %O -shell-escape %S/' $S.tex

clean:
	rm -f *.aux *.toc *. *.bbl *.blg *.log *.nav *.out *.snm *.vrb *_latexmk *.fls *.pyg
