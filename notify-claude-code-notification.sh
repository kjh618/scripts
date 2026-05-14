#!/bin/bash

"$(dirname "$0")"/remote-notify-send.sh "$1" --app-name="Claude Code" --transient "Claude Code needs your attention"
