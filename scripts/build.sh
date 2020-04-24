#!/usr/bin/env bash

set -e

# render website files
hugo -e production

# cleanup html
shopt -s globstar  # this makes public/**/*.html to search all html files witin public dir, not just it's subdirs
./node_modules/.bin/js-beautify -s 2 --no-preserve-newlines --type html -r public/**/*.html
