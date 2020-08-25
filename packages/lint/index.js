module.exports = {
  parser: '@typescript-eslint/parser',
  plugins: ['@typescript-eslint', 'implicit-dependencies', 'prettier'],
  env: {
    es6: true,
    node: true,
  },
  ignorePatterns: ['node_modules/**/*', 'dist*/**/*'],
  extends: ['typestrict', 'eslint:recommended'],
  rules: {
    'no-console': 'warn',
    'no-debugger': 'error',
    'prefer-const': 'error',
    'no-var': 'error',
    'implicit-dependencies/no-implicit': [
      'error',
      { peer: true, dev: true, optional: true },
    ],
    '@typescript-eslint/no-use-before-define': 'error',
    '@typescript-eslint/interface-name-prefix': [
      'error',
      {
        prefixWithI: 'never',
      },
    ],
    'prettier/prettier': 'error',
  },
  parserOptions: {
    sourceType: 'module',
  },
};
