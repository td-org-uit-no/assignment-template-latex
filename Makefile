# 	Makefile for compiling assignment latex template	\
	Dependencies: [texlive(full),inkscape]

TEXSRC = $(shell find . -name "*.tex")
TEXSRC += $(shell find . -name "*.bib")
TEXBUILD := build
TEXCOMPILE := latexmk -pdf
BIBCOMPILE := bibtex
TEXNAME := template
OUTNAME := template
TEXFLAGS := -interaction=nonstopmode -output-directory=$(TEXBUILD) -file-line-error
TEXFILES := acn acr alg aux bbl blg def defdvi fdb_latexmk fls glg glo gls ist lof log lot out synctex.gz toc 

.PHONY: all clean
all: $(TEXSRC)
	@mkdir -p $(TEXBUILD)
	@$(TEXCOMPILE) $(TEXFLAGS) $(TEXNAME).tex
	@for aux in $(shell find . -name "*.aux"); do $(BIBCOMPILE) $$aux;  done
	@mv $(TEXBUILD)/$(TEXNAME).pdf $(OUTNAME).pdf

clean:
	@rm -rf $(TEXBUILD) $(addsuffix .pdf, ${TEXNAME} ${OUTNAME}) $(addprefix *., ${TEXFILES})
