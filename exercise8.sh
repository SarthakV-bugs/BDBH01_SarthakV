#!/bin/bash

threshold=90

#use for loop from 1 to 100

for i in {1..100}
do
	echo "$i"

#check conditions

if [ $i -gt $threshold ]
then
 	echo "$1 is greater than threshold: $threshold"
fi
done