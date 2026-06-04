#!/usr/bin/env bash

# Kill ALL wlogout instances
pkill -9 wlogout

# Wait until wlogout is fully gone
while pgrep -x "wlogout" >/dev/null; do
    sleep 0.05
done

pkill -9 wlogout

# Optional: small delay to avoid flicker
sleep 0.15

# Launch Hyprlock
hyprlock

pkill -9 wlogout 

waybar & disown
