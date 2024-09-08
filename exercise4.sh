#!/bin/bash

#setting the threshold

THRESHOLD=70

#check the disk usage
USAGE=$(df "$HOME" | grep -v '^Filesystem'| tail -1 | awk '{print $5}' | sed 's/%//')
 
#echo "Usage: $USAGE"

#checking if USAGE > THRESHOLD
if [ "$USAGE" -ge "$THRESHOLD" ]
then
	echo "ALERT! DISK USAGE greater than THRESHOLD"
else
	echo "DISK USAGE for $HOME is at $USAGE% "
fi



