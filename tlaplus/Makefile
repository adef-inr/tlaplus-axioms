PDFLATEX=pdflatex
PDFLATEX_FLAGS=

all: main

.PHONY: main main.pdf
main: main.pdf

main.pdf: main.tex
	$(PDFLATEX) $(PDFLATEX_FLAGS) $<

.PHONY: clean
clean:
	rm -f *.out *.log *.aux

.PHONY: cleanall
cleanall:
	$(MAKE) clean;
	rm -f *.pdf *.toc
