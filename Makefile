TEX = /usr/local/texlive/2017/bin/x86_64-darwin/pdflatex

.PHONY: all clean

all: scala4java.pdf

clean:
	rm -f *.aux *.log *.nav *.out *.snm *.toc *.vrb *.synctex.gz

scala4java.pdf: scala4java.tex scala4java.aux
	$(TEX) scala4java.tex

scala4java.aux: scala4java.tex
	$(TEX) scala4java.tex
