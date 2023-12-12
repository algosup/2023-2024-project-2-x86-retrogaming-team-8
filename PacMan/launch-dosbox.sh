#!/usr/bin//env bash

set -Cue

ROOT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
BIN_DIR="$ROOT_DIR/bin"
DOSBOX_BIN="/opt/homebrew/bin/dosbox"
CONFIG_LOC="$ROOT_DIR"
# Uncomment the line below to include configuration file
# “$DOSBOX_BIN” -conf “$CONFIG_LOC”

"$DOSBOX_BIN" -c "MOUNT c $BIN_DIR" -c "C:" -c "pacman.com"