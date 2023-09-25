# /usr/bin/env bash

# Shutdown all previous instances
killall -q waybar

# Wait for all previous instances to shutdown
while pgrep -x waybar >/dev/null; do sleep 1; done

# Launch main
waybar
