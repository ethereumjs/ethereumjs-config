#!/bin/sh
set -o xtrace
eslint --fix --config ./.eslintrc.js . --ext .js,.jsx,.ts,.tsx
