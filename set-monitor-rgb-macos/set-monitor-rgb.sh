#!/bin/zsh

BD="/Applications/BetterDisplay.app/Contents/MacOS/BetterDisplay"
DISPLAY_NAME="LG Monitor"
CONNECTION_MODE="bpc:8+range:full+encoding:rgb"

# Exit if the display isn't connected or the app isn't running
current="$("$BD" get -namelike="$DISPLAY_NAME" -connectionMode)" || exit 0
[ -z "$current" ] && exit 0

# Set connection mode if it's not already "8bit SDR RGB Full SRGB".
if ! echo "$current" | grep -qi "8bit SDR RGB Full SRGB"; then
    "$BD" set -namelike="$DISPLAY_NAME" -connectionMode="$CONNECTION_MODE"
fi
