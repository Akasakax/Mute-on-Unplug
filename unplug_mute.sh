#!/usr/bin/env bash

while true; do
mute_status="$(osascript -e 'output muted of (get volume settings)')"
power_status="$(pmset -g batt)"
echo "Mute status: $mute_status"
echo "Battery status: $power_status"
if [[ "$mute_status" == "true" ]]; then
    echo "Muted"
elif [[ "$mute_status" == "false" ]]; then
    echo "Unmuted"
    if [[ "$power_status" == *"AC Power"* ]]; then
    echo "On AC Power"
    elif [[ "$power_status" == *"Battery Power"* ]]; then
    echo "On Battery Power"
    osascript -e 'set volume output muted true'
            while true; do
            power=$(pmset -g batt)
            if [[ "$power" == *"AC Power"* ]]; then
                break
            fi
            sleep 1
            done
    fi
fi
sleep 1
done