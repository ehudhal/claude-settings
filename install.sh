#!/bin/bash
# Install Claude Code settings to ~/.claude/settings.json
# Run: bash install.sh

set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
TARGET_DIR="$HOME/.claude"
TARGET_FILE="$TARGET_DIR/settings.json"

mkdir -p "$TARGET_DIR"

if [ -f "$TARGET_FILE" ]; then
  echo "Backing up existing settings to $TARGET_FILE.bak"
  cp "$TARGET_FILE" "$TARGET_FILE.bak"
fi

cp "$SCRIPT_DIR/settings.json" "$TARGET_FILE"
echo "Installed Claude Code settings to $TARGET_FILE"
