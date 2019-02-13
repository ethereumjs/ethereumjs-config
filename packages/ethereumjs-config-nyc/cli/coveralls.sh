#!/bin/sh
set -o xtrace
exec npm run coverage && exec coveralls <.nyc_output/lcov.info
