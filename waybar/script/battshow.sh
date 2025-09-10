#!/bin/bash
battery_level_0=$(cat /sys/class/power_supply/BAT0/capacity)
battery_level_1=$(cat /sys/class/power_supply/BAT1/capacity)
echo "Battery: [$battery_level_0% | $battery_level_1%]"

