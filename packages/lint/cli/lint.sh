#!/bin/sh
set -o xtrace
npm run format && eslint --config ./.eslintrc.js . --ext .js,.jsx,.ts,.tsx && npm run tsc
