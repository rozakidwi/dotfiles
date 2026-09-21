#!/bin/sh
SEPERATOR="$(echo '|')"
CLOCK="$(date +%R) WIB"
DATE="$(date +'%a, %b %d %Y')"
BATTERY="BAT $(cat /sys/class/power_supply/BAT?/capacity)%"
VOLUME="VOL $(wpctl get-volume @DEFAULT_SINK@ | awk '{print $2 * 100}')%"

echo "$VOLUME $SEPERATOR $BATTERY $SEPERATOR $DATE $SEPERATOR $CLOCK"
