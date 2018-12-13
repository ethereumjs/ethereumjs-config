# ethereumjs-config
Common configuration for EthereumJS libraries

## Usage

For guidance on how to to use configuration within an ``EthereumJS`` repo see the different
config files (e.g. ``tsconfig.json``) on the [RLP](https://github.com/ethereumjs/rlp) library
for reference.

## Development

This is a [lerna](https://github.com/lerna/lerna) monorepo. You need to have lerna installed 
globally in your system.

Bootstrapping:

```sh
lerna bootstrap
```

Publication with 2FA enabled:

```sh
NPM_CONFIG_OTP=123456 lerna publish
```
