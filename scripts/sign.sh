#!/bin/bash -e

CURRENT_PATH=`pwd`
SOURCE_FILENAME=Advance-Directives

echo ${CURRENT_PATH}
echo $SOURCE_FILENAME
echo ">> Generate signs ..."

# Use default theme and fonts w/ Japanese fallback.
gpg --detach-sign ${CURRENT_PATH}/docs/${SOURCE_FILENAME}.adoc
gpg --detach-sign ${CURRENT_PATH}/build/pdf/${SOURCE_FILENAME}.pdf
gpg --detach-sign ${CURRENT_PATH}/build/html/${SOURCE_FILENAME}.html

echo ">> Generated sign successfully!"
ls -1 docs/*.sig
ls -1 build/pdf/*.sig
ls -1 build/html/*.sig
