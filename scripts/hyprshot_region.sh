#!/bin/bash

# Define the absolute path to the directory where you want to save the screenshots
SAVE_DIR="/home/shaun/Pictures/hyprshot"

# Create the directory if it doesn't exist
mkdir -p "$SAVE_DIR"

# Run Hyprshot in region mode and save to the specified directory
screenshot_path="$SAVE_DIR/screenshot-$(date +%Y%m%d%H%M%S).png"
echo "Saving screenshot to: $screenshot_path"
hyprshot -m region -s "$screenshot_path"

# Optional: Notification after screenshot is taken
notify-send "Screenshot taken" "Saved to $screenshot_path"
