#!/bin/bash

# Capture screenshot with grim
screenshot_path="$HOME/Pictures/Screenshots/$(date +'%s_grim.png')"
grim -g "$(slurp)" "$screenshot_path"

# Play camera shutter sound
play $HOME/.config/hypr/assets/sounds/camera-shutter.ogg

# Send notification with the screenshot as an icon and longer duration (10 seconds)
notify-send -i "$screenshot_path" -t 5000 "Screenshot captured!" "Your screenshot has been saved to ~/Pictures/Screenshots."

