#!/bin/sh
exec prettier --list-different '**/*.{ts,json,md}'
