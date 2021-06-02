#!/bin/bash

if [[ $1 == "off" ]]
then
    rfkill block bluetooth
elif [[ $1 == "on" ]]
then
    rfkill unblock bluetooth
fi
