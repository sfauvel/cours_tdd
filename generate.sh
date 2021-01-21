#!/bin/bash

# Generate documents
# --attribute language='fr'

ASCIIDOC_GENERATE_PATH=$(dirname ~/Documents/projects/asciidoctor)/asciidoctor
. ${ASCIIDOC_GENERATE_PATH}/generate_core.sh

generate_pdf tdd_cours tdd_cours_slide "-a pdf-stylesdir=./themes -a pdf-style=tdd"
generate_pdf tdd_atelier tdd_atelier_slide "-a pdf-stylesdir=./themes -a pdf-style=tdd"

generate_revealjs_css tdd_cours paloit_reveal.css
cp ./content/themes/css/fullscreen.css ./docs/revealjs/css

