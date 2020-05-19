# @ethereumjs/config-typescript

Common `TypeScript` configuration for `EthereumJS` libraries.

Tool: [TypeScript](https://www.typescriptlang.org/)

Supported Version: `^3.2.2`

Exposed CLI commands:

- `ethereumjs-config-ts-compile`
- `ethereumjs-config-ts-build`

## Usage

Add `tsconfig.json`:

```json
{
  "extends": "@ethereumjs/config-typescript",
  "include": ["src/**/*.ts", "test/**/*.ts"]
}
```

Add `tsconfig.prod.json`:

```json
{
  "extends": "@ethereumjs/config-typescript",
  "compilerOptions": {
    "outDir": "./dist"
  },
  "include": ["src/**/*.ts"]
}
```

Use CLI commands above in `package.json`:

```json
  "scripts": {
    "tsc":   "ethereumjs-config-ts-compile",
    "build": "ethereumjs-config-ts-build"
  }
```



