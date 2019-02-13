#!/bin/sh
set -o xtrace
exec npm run format:fix && exec npm run tslint:fix && exec npm run tsc
