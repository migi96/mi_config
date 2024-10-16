#!/bin/bash

# ~/.config/i3blocks/scripts/running_apps.sh

# List of common applications
apps=("nvim" "chrome" "firefox" "code" "spotify")

# Check for running applications
running_apps=""
for app in "${apps[@]}"; do
  if pgrep -x "$app" > /dev/null; then
    running_apps+="$app "
  fi
done

# Output running applications
if [ -z "$running_apps" ]; then
  echo "None"
else
  echo "$running_apps"
fi

