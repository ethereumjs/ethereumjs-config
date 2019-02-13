#!/bin/sh
set -o xtrace
exec tslint -p ./tsconfig.json -e 'node_modules/**/*' -e '**/node_modules/**/*' -e 'dist/**/*' **/*.ts
