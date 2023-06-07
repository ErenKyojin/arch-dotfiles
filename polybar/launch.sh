#!/usr/bin/env bash
#
polybar-msg cmd quit

echo "---"
if type "xrandr"; then
	echo "i'm here"
	for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
		MONITOR=$m polybar --reload center &
	done
else
	polybar --reload center &
fi

echo "bars launched..."
