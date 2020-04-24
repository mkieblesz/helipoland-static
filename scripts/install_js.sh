#!/usr/bin/env bash

# ensure you have node 12.x installed
# if you are on mac you can install it with homebrew like this `brew install node@12`

set -e

npm install --no-package-lock \
    tailwindcss@v1.3.4 \
    postcss@7.0.27 \
    postcss-cli@7.1.0 \
    @fullhuman/postcss-purgecss@2.1.2 \
    cssnano@4.1.10

# install html beautifier
npm install --no-package-lock \
    js-beautify@1.11.0
