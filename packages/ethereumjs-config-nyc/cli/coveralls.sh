#!/bin/sh
exec npm run coverage && exec coveralls <.nyc_output/lcov.info
