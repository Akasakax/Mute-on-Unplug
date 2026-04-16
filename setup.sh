#!/usr/bin/env bash

chmod +x unplug_mute.sh
name="$(whoami)"
echo "user name: $name"
sed -i '' "s/USER_NAME/$name/" com.script.unplug_mute.plist
sudo cp com.script.unplug_mute.plist /Library/LaunchAgents/
launchctl load com.script.unplug_mute.plist