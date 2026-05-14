#!/bin/bash

LOCAL_USER="$1"
shift

if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_CONNECTION" ] || [ -n "$SSH_TTY" ]; then
    ESCAPED_ARGS="$(printf '%q ' "$@")"
    ssh -p 2222 "$LOCAL_USER@localhost" "notify-send $ESCAPED_ARGS"
else
    notify-send "$@"
fi
