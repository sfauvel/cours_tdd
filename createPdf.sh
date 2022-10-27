#!/usr/bin/env bash

ROOT_PATH="$(pwd)"
FILENAME=tdd_cours
PDF_PATH=${ROOT_PATH}/docs/pdf
REVEALJS_PATH=${ROOT_PATH}/docs/revealjs
#SIZE=1368x768
SIZE=1920x1080

html_for_pdf_with_path="./docs/revealjs/${FILENAME}_reveal_for_pdf.html"

cp ./docs/revealjs/tdd_cours_reveal.html $html_for_pdf_with_path
ls ./docs/revealjs/
sed -i -E "s/<link rel=\"stylesheet\" href=\"reveal.js-([0-9\.]+)\/css\/theme\/.*.css\" id=\"theme\">/<link rel=\"stylesheet\" href=\"reveal.js-\1\/css\/theme\/white.css\" id=\"theme\">/g" $html_for_pdf_with_path

mkdir -p ${PDF_PATH}
#https://github.com/astefanutti/decktape
docker run --rm -t \
  -v ${PDF_PATH}:/slides \
  -v ${REVEALJS_PATH}:/revealjs \
  astefanutti/decktape\
     --size ${SIZE} \
   /revealjs/${FILENAME}_reveal_for_pdf.html ${FILENAME}_${SIZE}.pdf


rm $html_for_pdf_with_path