# Scripts
## Claude Code notification
- Setup hooks in `~/.claude/settings.json`.
```json
  "hooks": {
    "PermissionRequest": [
      {
        "hooks": [
          {
            "type": "command",
            "command": "~/Applications/scripts/notify-claude-code-notification.sh local_user"
          }
        ]
      }
    ],
    "Elicitation": [
      {
        "hooks": [
          {
            "type": "command",
            "command": "~/Applications/scripts/notify-claude-code-notification.sh local_user"
          }
        ]
      }
    ],
    "Stop": [
      {
        "hooks": [
          {
            "type": "command",
            "command": "~/Applications/scripts/notify-claude-code-stop.sh local_user"
          }
        ]
      }
    ]
  }
```

- If Claude Code is running on remote, setup remote to connect to local without passwords:
  1. Local: `ssh -R 2222:localhost:22 remote_user@remote_server`
  2. Remote: `ssh-keygen -t ed25519`
  3. Remote: `ssh-copy-id -p 2222 local_user@localhost`
  4. Remote: `ssh -p 2222 local_user@localhost ls`
