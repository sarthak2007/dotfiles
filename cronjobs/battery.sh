#!/bin/bash

battery=`acpi -b | cut -f2 -d "," | tr "%" " "`
charging=`acpi -b | grep -c -e Charging -e Full`

if [[ $charging -eq 1 && $battery -gt 97 ]]
then
    export DISPLAY=:0 
    export DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus
    export XDG_RUNTIME_DIR=/run/user/1000
    notify-send -u critical Battery\ Full "Disconnect Charger"
    spd-say "Battery full"
fi

if [[ $charging -eq 0 && $battery -lt 30 ]]
then
    export DISPLAY=:0 
    export DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus
    export XDG_RUNTIME_DIR=/run/user/1000
    notify-send -u critical Battery\ Low "Connect Charger"
    spd-say "Battery low"
fi
