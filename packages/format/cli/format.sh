#!/bin/sh
set -o xtrace
exec prettier --list-different '**/*.{ts,json,md}'
