#!/bin/bash

if [[ $1 == "off" ]]
then
    nmcli radio wifi off
elif [[ $1 == "on" ]]
then
    nmcli radio wifi on
fi
