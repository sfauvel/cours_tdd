#!/bin/bash

# Generate documents
# --attribute language='fr'

. ~/Documents/projects/asciidoctor/generate_core.sh

generate_pdf_landscape tdd_cours
generate_revealjs tdd_cours


generate_pdf_landscape tdd_atelier
