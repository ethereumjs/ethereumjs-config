# @ethereumjs/config-tsc

Common `TypeScript` configuration for `EthereumJS` libraries.

Tool: [TypeScript](https://www.typescriptlang.org/)

Supported Version: `^3.2.2`

Exposed CLI commands:

- `ethereumjs-config-tsc`
- `ethereumjs-config-build`

## Usage

Add `tsconfig.json`:

```json
{
  "extends": "@ethereumjs/config-tsc",
  "include": ["src/**/*.ts", "test/**/*.ts"]
}
```

Add `tsconfig.prod.json`:

```json
{
  "extends": "@ethereumjs/config-tsc",
  "compilerOptions": {
    "outDir": "./dist"
  },
  "include": ["src/**/*.ts"]
}
```

Use CLI commands above in `package.json`:

```json
  "scripts": {
    "tsc": "ethereumjs-config-tsc",
    "build": "ethereumjs-config-build"
  }
```



