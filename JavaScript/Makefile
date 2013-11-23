
PDFS = JavaScript.pdf


all: $(PDFS)

dist: $(PDFS)
	mkdir -p ../dist
	cp -f $(PDFS) ../dist/

%.pdf : %.tex
	xelatex -interaction=nonstopmode '\input $<'
	xelatex -interaction=nonstopmode '\input $<'
