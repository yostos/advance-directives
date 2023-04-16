#!/bin/bash -e

CURRENT_PATH=`pwd`
SOURCE_FILENAME=Advance-Directives
TARGET_PATH=build/pdf

echo ">> Converting AsciiDoc to PDF..."

mkdir -p ${TARGET_PATH}
# Use default theme and fonts w/ Japanese fallback.
asciidoctor-pdf \
  -a scripts=cjk \
  -a pdf-theme=mystyle-theme.yml \
  -a pdf-themesdir=${CURRENT_PATH}/themes \
  -a pdf-fontsdir=${CURRENT_PATH}/fonts \
  docs/${SOURCE_FILENAME}.adoc \
  -o ${TARGET_PATH}/${SOURCE_FILENAME}.pdf

echo ">> Convert succeeded!"
echo ">> Converted files are following."
ls -1 build/pdf/*.pdf
