TARGET=pathIntegral

all: pdf
	
dvi:
	latex $(TARGET).tex

pdf:
	pdflatex $(TARGET).tex
	
postscript: dvi
	dvips $(TARGET).dvi
	
clean:
	rm -f *.aux *.toc *.dvi *.log *.pdf *.ps *.out
	