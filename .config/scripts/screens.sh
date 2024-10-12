#!/bin/bash

# Set resolution and position for HDMI-A-1
hyprctl keyword monitor HDMI-A-1,1920x1080@60,0x0

# Set transform for HDMI-A-2 (rotate by 90 degrees)
hyprctl keyword monitor HDMI-A-2,transform,1
