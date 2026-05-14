#!/bin/bash

LOCAL_USER="$1"
shift

if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_CONNECTION" ] || [ -n "$SSH_TTY" ]; then
    ssh -p 2222 "$LOCAL_USER@localhost" notify-send "$@"
else
    notify-send "$@"
fi
