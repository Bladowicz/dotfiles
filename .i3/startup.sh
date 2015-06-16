#!/bin/bash
exec xrandr --output DP1 --left-of eDP1 
exec xrandr --output HDMI2 --right-of eDP1 
exec xinput set-prop 13 "Device Enabled" 0
