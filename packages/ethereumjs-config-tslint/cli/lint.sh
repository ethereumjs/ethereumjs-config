#!/bin/sh
exec npm run format && exec npm run tslint && exec npm run tsc
