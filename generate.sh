#!/bin/bash

. ~/Documents/projects/asciidoctor/tools/generate_core.sh

generate_pdf tdd_cours tdd_cours_slide "-a pdf-stylesdir=./themes -a pdf-style=tdd"
generate_pdf tdd_atelier tdd_atelier_slide "-a pdf-stylesdir=./themes -a pdf-style=tdd"

add_theme revealjs ./content/themes
generate_revealjs tdd_cours