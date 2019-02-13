#!/bin/sh
set -o xtrace
exec npm run format && exec npm run tslint && exec npm run tsc
