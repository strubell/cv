#!/bin/bash

pdflatex cv.tex && \
bibtex cv && \
pdflatex cv.tex && \
pdflatex cv.tex

