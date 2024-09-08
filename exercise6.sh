#!/bin/bash

# Hardcoded directory 
directory="~/CODE/worksheet1_Shscripts"

# Create a file to store the names of empty subfolders
empty_subfolders_file="empty_subfolders.txt"

for dir in "$directory"/*/
do
	if [ -d "$dir" ] && [ -z "$(ls -A "$dir")" ]
		then 
			echo "${dir%/}" >> "$empty_subfolders_file"
	fi
done

echo "Empty subfolders have been listed"