# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/en/1.0.0/)
(modification: no type change headlines) and this project adheres to
[Semantic Versioning](http://semver.org/spec/v2.0.0.html).

## [2.0.0] - 2020-10-08

This project got a major overhaul, with several updates to the tooling, including packages renaming and retiring some scripts.

**Breaking changes**

- Package renamed: `@ethereumjs/config-tsc` => [`@ethereumjs/config-typescript`](https://github.com/ethereumjs/ethereumjs-config/tree/master/packages/typescript ), to become more tool agnostic, PR [#27](https://github.com/ethereumjs/ethereumjs-config/pull/27)
- Added TypeScript compiler config file for targeting the browser, PR [#28](https://github.com/ethereumjs/ethereumjs-config/pull/28)

[2.0.0]: https://github.com/ethereumjs/ethereumjs-vm/compare/%40ethereumjs%2Fconfig%401.1.1...%40ethereumjs%2Fconfig%402.0.0

