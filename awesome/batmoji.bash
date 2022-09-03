#! /bin/bash

state=$(upower -i /org/freedesktop/UPower/devices/battery_CMB0 | awk '/state/ {print $NF}')
percentage=$(upower -i /org/freedesktop/UPower/devices/battery_CMB0 | awk '/percentage/ {print $NF}')
emoji=""
if [ "$state" == "discharging" ]; then
	emoji=$(echo -e "\U1F50B")
else
	emoji=$(echo -e "\U1F50C")
fi
echo "$emoji $percentage "
