# Makefile for compiling assignment latex template
# Dependencies: [texlive(full),latexmk]

SRC := $(wildcard *.tex)
PDFS := $(patsubst %.tex,../%.pdf,$(SRC))

.PHONY: all clean
all: $(PDFS)

.PHONY: ALWAYS_MAKE	# Always run latexmk. Let it do dependency checking.
%.pdf: %.tex ALWAYS_MAKE
	latexmk $(LATEXMKFLAGS) $<

.PRECIOUS: %.pdf	# Keep local PDFs so latexmk can check their times
../%.pdf: %.pdf
	cp $< $@

clean:
	latexmk $(LATEXMKFLAGS) -C $(SRC)
	$(RM) *.run.xml
