#@ethereumjs/config-prettier

Common formatting configuration for `EthereumJS` libraries.

Tool: [Prettier](https://prettier.io/)

Supported Version: `^1.15.3`

Exposed CLI commands:

- `ethereumjs-config-format`
- `ethereumjs-config-format-fix`

## Usage

Add `prettier.config.js`:

```javascript
module.exports = require('@ethereumjs/config-prettier')
```

Add `.prettierignore`:

```shell
node_modules
.vscode
package.json
dist
.nyc_output
```

Use CLI commands above in `package.json`:

```json
  "scripts": {
    "format": "ethereumjs-config-format",
    "format-fix": "ethereumjs-config-format-fix"
  }
```



