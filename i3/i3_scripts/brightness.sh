#! /bin/sh

brightness=`cat /sys/class/backlight/intel_backlight/brightness`
if [ $brightness -le 20 -a $1 -lt 0 ]
then
	brightness=21  
	echo $brightness
fi
echo `expr $brightness + $1` >> /sys/class/backlight/intel_backlight/brightness
