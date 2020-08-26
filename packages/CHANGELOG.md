# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/en/1.0.0/)
(modification: no type change headlines) and this project adheres to
[Semantic Versioning](http://semver.org/spec/v2.0.0.html).

## [2.0.0] - 2020-08-25

This package got a major overhaul, with several updates to our tooling, including package renaming and retiring some scripts. Below is a breakdown by package.

**@ethereumjs/config-nyc => [@ethereumjs/coverage](https://github.com/ethereumjs/ethereumjs-config/tree/master/packages/coverage)**

- `@ethereumjs/config-nyc` got renamed to the library agnostic name `@ethereumjs/config-coverage`. 
- The platform-specific script `ethereumjs-config-coveralls` got removed, due to the use of Codecov and [nicer integration to GitHub CI](https://github.com/codecov/codecov-action).

**@ethereumjs/config-prettier**

- This package was removed, due to the overlap in functionality introduced in `eslint-plugin-prettier`.

**@ethereumjs/config-tslint => [@ethereumjs/eslint-config-defaults](https://github.com/ethereumjs/ethereumjs-config/tree/master/packages/lint)**

Following the deprecation of the [TSLint project](https://palantir.github.io/tslint/) by Palantir, we moved on to ESLint that has integrations with TypeScript and Prettier.
- `@ethereumjs/config-tslint` got renamed to `@ethereumjs/eslint-config-defaults`
- Removal of scripts `ethereumjs-config-tslint` and `ethereumjs-config-tslint-fix`
- Added TypeScript ESLint
- Added TypeStrict
- Added Prettier

**@ethereumjs/config-tsc => [@ethereumjs/config-typescript](https://github.com/ethereumjs/ethereumjs-config/tree/master/packages/typescript )**

- `@ethereumjs/config-tsc` got renamed to `@ethereumjs/config-typescript`
- Added TypeScript compiler config file for targeting the browser


[2.0.0]: https://github.com/ethereumjs/ethereumjs-vm/compare/%40ethereumjs%2Fconfig%401.1.1...%40ethereumjs%2Fconfig%402.0.0

