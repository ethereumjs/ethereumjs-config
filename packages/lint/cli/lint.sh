#!/bin/sh

# There are several ways this dependency can be placed in relation to the host package. 
# Given that monorepos can hoist their dependencies to the root level, we must not assume 
# that this very package will be located at ./node_modules/@ethereumjs/eslint-config-defaults, relatively from the host package.

# 1) The traditional way: 
#   + ethereumjs-vm
#     - packages/vm/node_modules/@ethereumjs/eslint-config-defaults
# 
# 2) The hoisted way
#   + ethereumjs-vm
#     - node_modules/ethereumjs/eslint-config-defaults [1]
#     - packages/vm/node_modules/@ethereumjs/eslint-config-defaults (symlink to [1])
# 
# 3) The local development way (using npm link)
#   + ethereumjs-config/packages/lint [1]
#   + ethereumjs-vm
#     - packages/vm/node_modules/@ethereumjs/eslint-config-defaults (symlink to [1])
# 

# The package_path() function resolves possible symlinks, and goes up one directory, returning this package base dir.

package_path() {
    # canonical path of this script, resolving symlinks
    REALPATH_SCRIPT=$(realpath $BASH_SOURCE)

    # going up one directory, towards the lint package dir.
    LINT_PACKAGE_DIRECTORY=$(dirname $(dirname ${REALPATH_SCRIPT}))

    echo $LINT_PACKAGE_DIRECTORY
}

BLUE="\033[0;34m"
GREEN="\033[0;32m"
YELLOW="\033[0;33m"
RED="\033[0;31m"
NOCOLOR="\033[0m"
DIM="\033[2m"

blue() {
    echo "${BLUE}$1${NOCOLOR}"
}
green() {
    echo "${GREEN}$1${NOCOLOR}"
}
dim() {
    echo "${DIM}$1${NOCOLOR}"
}

dim "> eslint --format codeframe --config ./.eslintrc.js . \\ "
dim "\t --ext .js,.jsx,.ts,.tsx \\ "
dim "\t --resolve-plugins-relative-to $(package_path)\n"

blue "[Lint]${NOCOLOR} checking..."

eslint --format codeframe --config ./.eslintrc.js . --ext .js,.jsx,.ts,.tsx --resolve-plugins-relative-to $(package_path)

RETURN_CODE=$?

if [ $RETURN_CODE -eq 0 ]; then
    blue "[Lint]${GREEN} DONE.\n"
else
    exit $RETURN_CODE
fi
