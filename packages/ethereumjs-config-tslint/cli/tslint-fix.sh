#!/bin/sh
exec tslint --fix --format stylish -p ./tsconfig.json -e 'node_modules/**/*' -e '**/node_modules/**/*' -e 'dist/**/*' **/*.ts
