#!/bin/sh

# This script helps migrating ethereumjs-config from 1.1.1 to 2.0.0

# 1. Some packages had their names changed, so we'll uninstall and install the new ones.

npm remove @ethereumjs/config-nyc @ethereumjs/config-tsc @ethereumjs/config-prettier @ethereumjs/config-tslint

npm i --save-dev @ethereumjs/config-coverage @ethereumjs/config-typescript @ethereumjs/eslint-config-defaults

npm i --save-dev @typescript-eslint/eslint-plugin eslint-config-prettier eslint-plugin-implicit-dependencies


# 2. Some scripts had changed name

# ethereumjs-config-tsc -> ethereumjs-config-ts-compile
sed -E -e 's/ethereumjs\-config\-tsc/ethereumjs-config-ts-compile/' -ibak package.json

# ethereumjs-config-build -> ethereumjs-config-ts-build
sed -E -e 's/ethereumjs\-config\-build/ethereumjs-config-ts-build/' -ibak package.json


npm i --save-dev eslint@6


# 3. Some scripts are just gone

echo "Checking for deprecated scripts. Please remove the pointed scripts below (if any)."

# ethereumjs-config-coveralls -> ☠️
grep -EHn "ethereumjs-config-coveralls" package.json

# ethereumjs-config-lint -> ☠️
# ethereumjs-config-lint-fix -> ☠️
grep -EHn "ethereumjs-config-tslint(-fix)?" package.json

grep -EHn "tsc" tslint*.json


# 4. Health check
npm run build
npm run lint
npm run lint:fix
npm run coverage
