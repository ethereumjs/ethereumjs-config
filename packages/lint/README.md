# @ethereumjs/config-eslint

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
  extends: "@ethereumjs/config-lint"
}
```

Use CLI commands above in your `package.json`:

```json
  "scripts": {
    "lint": "ethereumjs-config-lint",
    "lint:fix": "ethereumjs-config-lint-fix",
  }
```
