# @ethereumjs/config-coverage

Common test coverage configuration for `EthereumJS` libraries.

Tool: [nyc](https://istanbul.js.org/)

Exposed CLI command:

- `ethereumjs-config-coverage`

## Usage

Add `.nycrc`:

```json
{
  "extends": "@ethereumjs/config-coverage"
}
```

Use scipt above in `package.json`:

```json
  "scripts": {
    "coverage": "ethereumjs-config-coverage"
  }
```
