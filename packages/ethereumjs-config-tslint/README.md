# @ethereumjs/config-tslint

Common linting configuration for `EthereumJS` libraries.

Tool: [TSLint](https://palantir.github.io/tslint/)

Supported Version: `^5.12.0`

Exposed CLI commands:

- `ethereumjs-config-tslint`
- `ethereumjs-config-tslint-fix`
- `ethereumjs-config-lint`
- `ethereumjs-config-lint-fix`

## Usage

Add `tslint.json`:

```json
{
  "extends": "@ethereumjs/config-tslint"
}
```

Use CLI commands above in `package.json`:

```json
  "scripts": {
    "tslint": "ethereumjs-config-tslint",
    "tslint-fix": "ethereumjs-config-tslint-fix",
    "lint": "ethereumjs-config-lint",
    "lint-fix": "ethereumjs-config-lint-fix"
  }
```

## Installation

This package requires [`typestrict`](https://github.com/krzkaczor/TypeStrict) to be installed.

