#!/bin/sh
set -o xtrace
exec npm run format:fix && exec eslint --fix --config ./eslintrc.js . --ext .js,.jsx,.ts,.tsx && exec npm run tsc
