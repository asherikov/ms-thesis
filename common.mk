# building tool
TEX = latex
BIB = bibtex
PDF = pdflatex
HTML = latex2html


# Variables
NAME=${.TARGET}

# auxilary
clean-tex: clean-common
	rm -f *.aux *.bbl *.blg *.out *.nav *.snm
	rm -f *.brf *.idx *.loa *.lof *.lot
	rm -f *.log
	rm -f *.toc
	rm -f *.dvi
	rm -f *.ps
	rm -f *.pdf
	rm -f *.pfg

clean-common:
	rm -f *~
	rm -f *.bak

commit: clean
	git commit

# dummy targets
.PHONY: all clean

