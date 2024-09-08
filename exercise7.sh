#!/bin/bash

read -p "Enter the name of the file:" input_file

#input file check

if [ ! -f "$input_file" ]
then
	echo "Error: File $input_file not found" 
	exit 1
fi

#use sort
cat "$input_file" | sort | uniq -c 
