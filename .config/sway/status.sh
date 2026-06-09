#!/bin/sh
brightness () {
	NUMBER_CUR="$(cat /sys/class/backlight/amdgpu_bl1/brightness)"
	NUMBER_MAX="$(cat /sys/class/backlight/amdgpu_bl1/max_brightness)"
	BRIGHTNESS_NUMBER="$(( 100 * NUMBER_CUR / NUMBER_MAX ))"
	printf "BRI %s%%" "$BRIGHTNESS_NUMBER"
}
volume () {
	VOLUME_NUMBER="$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{ product = $2 * 100; print product }')"
	printf "VOL %s%%" "$VOLUME_NUMBER"
}
battery () {
	BATTERY_NUMBER="$(cat /sys/class/power_supply/BAT0/capacity)"
	CHARGING_STATE="$(cat /sys/class/power_supply/BAT0/status)"

	if [ "$CHARGING_STATE" == "Charging" ]; then
		CHARGING_SIGN=" (+)"
	else
		CHARGING_SIGN=""
	fi

	printf "BAT %s%%%s" "$BATTERY_NUMBER" "$CHARGING_SIGN"
}
calendar () {
	date +'%a - %b %d, %Y'
}
clock () {
	echo "UTC+7 $(date +'%R')"
}

echo "$(brightness)  $(volume)  $(battery)  $(calendar)  $(clock)"

