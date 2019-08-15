#!/bin/bash

USER_HOME="/home/antonov"

# 1 - expand filenames
sed "s|^|$USER_HOME/creamy_seas/|" "exclude_dir.txt" > "exclude_dir_expanded.txt"
EXCLUDE_DIR=$(cat "exclude_dir_expanded.txt" | tr "\n" ",")

# 2 - write to config file
sed -i "s|^exclude-dirs.*$|exclude-dirs=\"$EXCLUDE_DIR\"|" "$USER_HOME/.config/yandex-disk/config.cfg"
