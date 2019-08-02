#!/bin/bash

# 1 - name
baseName=$(echo "$1" | sed "s/\..*//")

# 2 - export image to latex
pwd=$(pwd)
echo "$pwd/$1"
echo "$pwd/$baseName.pdf"
inkscape --file="$pwd/$1" --without-gui --export-pdf="$pwd/$baseName.pdf" --export-latex

# # 3 - remove pdf document
# rm "$pwd/$baseName.pdf"
