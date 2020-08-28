#!/bin/sh
set -o xtrace
eslint --config ./.eslintrc.js . --ext .js,.jsx,.ts,.tsx --resolve-plugins-relative-to node_modules/@ethereumjs/eslint-config-defaults