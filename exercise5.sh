#!/bin/bash

#extract function

get_usage%() 
{
	local dir="$1"
	df "$dir" | grep -v '^Filesystem' | tail -1 | awk '{print $5}' | sed 's/%//'

}
#extract the usage for root dir

root_usage=$(get_usage% "/")

#extract the usage for home dir

Home_usage=$(get_usage% "$HOME")

#relative usage

if [ "$root_usage" -ne 0 ]
 then
    RELATIVE_USAGE=$(( (Home_usage * 100) / root_usage ))

 else 
 	RELATIVE_USAGE="invalid"
fi

echo "root_usage: $root_usage%"
echo "Home_usage: $Home_usage%"
echo "Home dir usage relative to root dir: $RELATIVE_USAGE%"
