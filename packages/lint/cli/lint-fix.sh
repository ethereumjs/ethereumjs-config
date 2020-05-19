#!/bin/sh
set -o xtrace
npm run format:fix && eslint --fix --config ./.eslintrc.js . --ext .js,.jsx,.ts,.tsx && npm run tsc
