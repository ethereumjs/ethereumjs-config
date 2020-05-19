#!/bin/sh
set -o xtrace
eslint --config ./.eslintrc.js . --ext .js,.jsx,.ts,.tsx
