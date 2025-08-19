#!/bin/bash

bat0=$(cat /sys/class/power_supply/BAT0/capacity)
bat1=$(cat /sys/class/power_supply/BAT1/capacity)
status0=$(cat /sys/class/power_supply/BAT0/status)
status1=$(cat /sys/class/power_supply/BAT1/status)

# Take average (or weighted sum if you prefer)
avg=$(( (bat0 + bat1) / 2 ))

if [[ "$status0" == "Charging" || "$status1" == "Charging" ]]; then
    echo "⚡ $avg%"
else
    echo "🔋 $avg%"
fi

