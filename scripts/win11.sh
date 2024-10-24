#!/bin/bash

# Define the desired workspace
desired_workspace=5

# Switch to the desired workspace
hyprctl dispatch workspace "$desired_workspace"

# Wait for a moment to ensure the workspace switch is registered
sleep 1

# Send a notification that the VM is launching
notify-send "Windows 11 Starting up" -i /home/shaun/wallpaper/windows-11-abstract-light_3840x2160_xtrafondos.com.jpg
# Start the Windows 11 virtual machine
virsh --connect qemu:///system start "win11"

# Wait for 5 seconds to allow the VM to initialize
sleep 5

# Launch virt-manager and show the console for the VM
virt-manager --connect qemu:///system --show-domain-console "win11"

# Optionally, you can also switch back to the desired workspace after launching virt-manager
# hyprctl dispatch workspace "$desired_workspace"
