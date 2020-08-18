#!/bin/sh

# from 1.1.1 production to 2.0.0 development

npm remove @ethereumjs/config-nyc @ethereumjs/config-tsc @ethereumjs/config-prettier @ethereumjs/config-tslint

ETHEREUMJS_CONFIG_PATH=/Users/evertonfraga/Projects/Ethereum/ethereumjs-config

npm i --save-dev \
  @ethereumjs/config-coverage@file:$ETHEREUMJS_CONFIG_PATH/packages/coverage \
  @ethereumjs/config-typescript@file:$ETHEREUMJS_CONFIG_PATH/packages/typescript \
  @ethereumjs/config-format@file:$ETHEREUMJS_CONFIG_PATH/packages/format \
  @ethereumjs/eslint-config-defaults@file:$ETHEREUMJS_CONFIG_PATH/packages/lint
