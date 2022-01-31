#!/usr/bin/env bash

filename=$1

echo "Compiling ${filename}"

pdflatex ${filename}.tex && \
    bibtex ${filename} && \
    pdflatex ${filename}.tex && \
    pdflatex ${filename}.tex
