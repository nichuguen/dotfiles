#!/bin/bash


INCREMENT_BRIGHTNESS="50"
ROOT_BRIGHTNESS="/sys/class/backlight/intel_backlight"
MIN_BRIGHTNESS="0"
CURRENT_BRIGHTNESS=$(cat $ROOT_BRIGHTNESS/actual_brightness)

COMPUTED_BRIGHTNESS=$(($CURRENT_BRIGHTNESS-$INCREMENT_BRIGHTNESS))

#MAX COMPUTED_BRIGHTNESS MIN_BRIGHTNESS
COMPUTED_BRIGHTNESS=$(($COMPUTED_BRIGHTNESS<$MIN_BRIGHTNESS?$MIN_BRIGHTNESS:$COMPUTED_BRIGHTNESS))
echo $COMPUTED_BRIGHTNESS > $ROOT_BRIGHTNESS/brightness
