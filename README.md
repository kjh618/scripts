# Scripts
## Claude Code notification
- settings.json
```
  "hooks": {
    "Notification": [
      {
        "matcher": "permission_prompt|elicitation_dialog",
        "hooks": [
          {
            "type": "command",
            "command": "/home/kjh/Applications/scripts/notify-claude-code-notification.sh"
          }
        ]
      }
    ],
    "Stop": [
      {
        "hooks": [
          {
            "type": "command",
            "command": "/home/kjh/Applications/scripts/notify-claude-code-stop.sh"
          }
        ]
      }
    ]
  },
```
