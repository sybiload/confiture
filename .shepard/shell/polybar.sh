#!/bin/sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch polybar
MONITOR=HDMI-0 polybar -c ~/.shepard/config/polybar/config top &
MONITOR=DP-1 polybar -c ~/.shepard/config/polybar/config top &
