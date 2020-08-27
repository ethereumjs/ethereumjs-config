#!/bin/sh
set -e
set -o xtrace

tsc -p ./tsconfig.prod.json

if [ -f ./tsconfig.browser.json ];
then
    tsc -p ./tsconfig.browser.json
else
    echo "Skipping browser build, because no tsconfig.browser.json file is present."
fi