#!/bin/sh
set -o xtrace
exec npm run format && exec eslint --config ./.eslintrc.js . --ext .js,.jsx,.ts,.tsx && exec npm run tsc
