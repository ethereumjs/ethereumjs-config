#@ethereumjs/config-nyc

Common test coverage configuration for `EthereumJS` libraries.

Tool: [nyc](https://istanbul.js.org/)

Supported Version: `^11.7.0`

Exposed CLI commands:

- `ethereumjs-config-coverage`
- `ethereumjs-config-coveralls`

## Usage

Add `.nycrc`:

```json
{
  "extends": "@ethereumjs/config-nyc"
}
```

Use CLI commands above in `package.json`:

```json
  "scripts": {
    "coverage": "ethereumjs-config-coverage",
    "coveralls": "ethereumjs-config-coveralls"
  }
```



