#!/bin/sh
set -o xtrace
exec prettier --write '**/*.{ts,json,md}'
