#!/bin/sh

# from 1.1.1 production to 2.0.0 development

npm remove @ethereumjs/config-nyc @ethereumjs/config-tsc @ethereumjs/config-prettier @ethereumjs/config-tslint

ETHEREUMJS_CONFIG_PATH=/Users/evertonfraga/Projects/Ethereum/ethereumjs-config/packages

PROJECT_PWD=`pwd`

cd $ETHEREUMJS_CONFIG_PATH/coverage && npm link
cd $ETHEREUMJS_CONFIG_PATH/typescript && npm link
cd $ETHEREUMJS_CONFIG_PATH/lint && npm link

cd $PROJECT_PWD
npm link @ethereumjs/config-coverage
npm link @ethereumjs/config-typescript
npm link @ethereumjs/eslint-config-defaults

npm i --save-dev \
  @ethereumjs/config-coverage@file:$ETHEREUMJS_CONFIG_PATH/packages/coverage \
  @ethereumjs/config-typescript@file:$ETHEREUMJS_CONFIG_PATH/packages/typescript \
  @ethereumjs/eslint-config-helper@file:$ETHEREUMJS_CONFIG_PATH/packages/lint