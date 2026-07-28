#/bin/zsh

cp -v set-monitor-rgb-macos/local.set-monitor-rgb.plist ~/Library/LaunchAgents/

launchctl bootstrap gui/$(id -u) ~/Library/LaunchAgents/local.set-monitor-rgb.plist
# To remove it, run `launchctl bootout gui/$(id -u)/local.set-monitor-rgb`.
