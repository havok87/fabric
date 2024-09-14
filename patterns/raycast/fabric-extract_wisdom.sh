#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Extract Wisdom
# @raycast.mode fullOutput
# @raycast.packageName Fabric

# Optional parameters:
# @raycast.icon 🧠
# @raycast.argument1 { "type": "text", "placeholder": "Input text", "optional": false, "percentEncoded": true}

# Documentation:
# @raycast.description Run fabric extract_wisdom on input text
# @raycast.author hav0k
# @raycast.authorURL https://github.com/havok87

# Set PATH to include common locations and $HOME/go/bin
PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$HOME/go/bin:$PATH"

# Use the PATH to find and execute fabric
if command -v fabric >/dev/null 2>&1; then
    fabric -sp extract_wisdom "${1}"
else
    echo "Error: fabric command not found in PATH"
    echo "Current PATH: $PATH"
    exit 1
fi