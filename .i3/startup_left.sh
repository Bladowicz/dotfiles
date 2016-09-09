#!/bin/bash

xrandr --output HDMI2 --primary
xrandr --output DP1 --left-of HDMI2 
xrandr --output eDP1 --right-of HDMI2 
xinput set-prop 13 "Device Enabled" 0
