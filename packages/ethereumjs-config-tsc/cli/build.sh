#!/bin/sh
set -o xtrace
exec tsc -p ./tsconfig.prod.json
