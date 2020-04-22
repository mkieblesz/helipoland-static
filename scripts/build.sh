#!/usr/bin/env bash

# adds installed npm package executables to exec path
export PATH="$PATH:./node_modules/.bin/"
# adds hugo binary to exec path
export PATH="$PATH:./"

# generate css
tailwindcss build tailwind/styles.css -c tailwind/tailwind.config.js -o static/styles.css

# render website files
hugo

# postprocess css
postcss static/styles.css --config tailwind --map -o static/styles.final.css
