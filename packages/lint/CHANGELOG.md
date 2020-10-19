# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/en/1.0.0/)
(modification: no type change headlines) and this project adheres to
[Semantic Versioning](http://semver.org/spec/v2.0.0.html).

## [2.0.0] - 2020-08-25

This project got a major overhaul, with several updates to the tooling, including packages renaming and retiring some scripts. Below is a breakdown by package.

**Breaking changes**

- This package got renamed: `@ethereumjs/config-tslint` => [`@ethereumjs/eslint-config-defaults`](https://github.com/ethereumjs/ethereumjs-config/tree/master/packages/lint), PRs [#29](https://github.com/ethereumjs/ethereumjs-config/pull/29), [#32](https://github.com/ethereumjs/ethereumjs-config/pull/32)
- Updated shell scripts and overall configuration, PR [#34](https://github.com/ethereumjs/ethereumjs-config/pull/34)

Following the deprecation of the [TSLint project](https://palantir.github.io/tslint/) by Palantir, we moved on to ESLint, that allows us to better integrate with TypeScript and Prettier.
- `@ethereumjs/config-tslint` got renamed to `@ethereumjs/eslint-config-defaults`
- Removal of scripts `ethereumjs-config-tslint` and `ethereumjs-config-tslint-fix`
- Added TypeScript ESLint
- Added TypeStrict
- Added Prettier

[2.0.0]: https://github.com/ethereumjs/ethereumjs-vm/compare/%40ethereumjs%2Fconfig%401.1.1...%40ethereumjs%2Fconfig%402.0.0

