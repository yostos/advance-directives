#!/bin/bash -e

CURRENT_PATH=`pwd`
SOURCE_FILENAME=Advance-Directives

echo ">> Verify signs ..."

# Use default theme and fonts w/ Japanese fallback.
gpg --verify ${CURRENT_PATH}/docs/${SOURCE_FILENAME}.adoc.sig
gpg --verify ${CURRENT_PATH}/build/pdf/${SOURCE_FILENAME}.pdf.sig
gpg --verify ${CURRENT_PATH}/build/html/${SOURCE_FILENAME}.html.sig

