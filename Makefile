# 	Makefile for compiling assignment latex template	\
	Dependencies: [texlive(full)]

SRC := $(shell find . -name '*.tex')
TARGET := $(patsubst %.tex,%.pdf,$(SRC))
BUILD_DIR := ./build

.PHONY: all clean
all:
	@mkdir -p $(BUILD_DIR)
	latexmk -pdf -interaction=nonstopmode -output-directory=$(BUILD_DIR) -file-line-error $(SRC)
	@mv $(BUILD_DIR)/$(notdir $(TARGET)) $(TARGET)

clean:
	latexmk -c $(SRC)

