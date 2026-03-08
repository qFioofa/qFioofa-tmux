#!/bin/bash

TARGET_DIR="$HOME/.config/tmux"

REMOVE_OLD=0
for arg in "$@"; do
	if [ "$arg" = "-r" ]; then
		REMOVE_OLD=1
	fi
done

if [ $REMOVE_OLD -eq 1 ]; then
	echo "Removing old config..."
	rm -rf "$TARGET_DIR"
fi

mkdir -p "$TARGET_DIR"

# cp -r src/tmux.conf "${TARGET_DIR}/" 2>/dev/null && echo "Copied tmux.conf file"
cp -r src/* "${TARGET_DIR}/" 2>/dev/null && echo "Copied tmux config files"

echo "Deployed to $TARGET_DIR"
