#!/bin/sh


FILE="$1"
MODE="$2"

if [ -z "${MODE}" ]; then 
    echo "Prerequisite: sudo apt install ghostscript"
    echo "Usage $0 file.pdf mode"
    echo "mode can be one of screen, ebook, printer, prepress"
else
    ps2pdf -dPDFSETTINGS=/${MODE} ${FILE} ${FILE%%.pdf}_${MODE}.pdf
fi
