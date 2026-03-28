#!/bin/bash

warned20=0
warned10=0

while true; do
  level=$(cat /sys/class/power_supply/BAT0/capacity)
  status=$(cat /sys/class/power_supply/BAT0/status)

  if [ "$status" = "Charging" ]; then
    warned20=0
    warned10=0
  fi

  if [ "$status" != "Charging" ]; then
    if [ "$level" -le 20 ] && [ $warned20 -eq 0 ]; then
      notify-send "Battery low" "Level: $level%"
      warned20=1
    fi

    if [ "$level" -le 10 ] && [ $warned10 -eq 0 ]; then
      notify-send "Battery critical" "Level: $level%"
      warned10=1
    fi
  fi

  sleep 60
done
