# @ethereumjs/eslint-config-defaults

Common linting configuration for `EthereumJS` libraries utilizing:

- [ESLint](https://eslint.org/)
- [TypeScript ESLint](https://github.com/typescript-eslint/typescript-eslint)
- [TypeStrict](https://github.com/krzkaczor/TypeStrict)
- [Prettier](https://prettier.io/docs/en/integrating-with-linters.html)

Exposed CLI commands:

- `ethereumjs-config-lint`
- `ethereumjs-config-lint-fix`

## Usage

Add `.eslintrc.js`:

```js
module.exports = {
  extends: "@ethereumjs/eslint-config-defaults"
}
```

Add `prettier.config.js`:

```js
module.exports = require('@ethereumjs/eslint-config-defaults/prettier.config.js')
```

Use CLI commands above in your `package.json`:

```json
  "scripts": {
    "lint": "ethereumjs-config-lint",
    "lint:fix": "ethereumjs-config-lint-fix",
  }
```


_Note: The name of this package deviates from the standard @ethereumjs/config-xxx, due to an ESLint hard rule on package naming. [Reference](https://eslint.org/docs/developer-guide/shareable-configs#npm-scoped-modules)._
