# building tool
TEX = latex
BIB = bibtex
PDF = pdflatex
HTML = latex2html


# documents
thesis:
	$(TEX) $@
	$(BIB) $@
	$(TEX) $@
	$(TEX) $@
#	dvips -j0 -Ppdf -Pdownload35 -G0 $@
#	ps2pdf -dCompatibilityLevel=1.4 -dMaxSubsetPct=100 -dSubsetFonts=true -dEmbedAllFonts=true $@.ps $@.pdf
	dvipdf -dCompatibilityLevel=1.4 -dMaxSubsetPct=100 -dSubsetFonts=true -dEmbedAllFonts=true $@.dvi $@.pdf

fig:
	cd Figures; make all

# auxilary
clean: 
	rm -f *.aux *.bbl *.blg *.out *.nav *.snm
	rm -f *.brf *.idx *.loa *.lof *.lot
	rm -f *.log
	rm -f *.toc
	rm -f *.dvi
	rm -f *.ps
	rm -f *.pdf
	rm -f *.pfg
	rm -f *~
	rm -f *.bak

# dummy targets
.PHONY: all clean
