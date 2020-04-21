#!/usr/bin/env bash

HUGO_VERSION="0.69.0"
OS="$(uname)"
SYSTEM_ARCHITECTURE="$(getconf LONG_BIT)"
HUGO_BINARY_ARCHIVE_URL="https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_${OS}-${SYSTEM_ARCHITECTURE}bit.tar.gz"

# 1. Downloads appropriate hugo binary for linux/mac
# "curl -L ... " downloads contents of url and pipe it into next command, -L option follows redirects
# "tar zx hugo" decompresses file (z option), extracts "hugo" file from the archive (x option)
curl -L $HUGO_BINARY_ARCHIVE_URL | tar zx hugo
