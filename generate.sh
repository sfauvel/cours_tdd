#!/bin/bash

# Generate documents
# --attribute language='fr'

ASCIIDOC_GENERATE_PATH=$(dirname ~/Documents/projects/asciidoctor)/asciidoctor
echo $ASCIIDOC_GENERATE_PATH
. ${ASCIIDOC_GENERATE_PATH}/generate_core.sh

generate_pdf_landscape tdd_cours
#generate_revealjs tdd_cours
generate_revealjs_css tdd_cours paloit_reveal.css

cp ./content/themes/css/fullscreen.css ./docs/revealjs/css

#generate_pdf_landscape tdd_atelier
