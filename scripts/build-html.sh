#!/bin/bash -e

CURRENT_PATH=`pwd`
SOURCE_FILENAME=Advance-Directives
TARGET_PATH=build/html

mkdir -p ${TARGET_PATH}

echo ">> Converting AsciiDoc to HTML..."

asciidoctor docs/${SOURCE_FILENAME}.adoc -o ${TARGET_PATH}/${SOURCE_FILENAME}.html

echo ">> Convert succeeded!"
echo ">> Converted files are following."
ls -1 build/html/*.html
