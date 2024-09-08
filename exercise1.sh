!/bin/bash

# shell script program to list all executable files 


for file in /
do
	if [[ -x $file ]];
	 then
		ls -l $file
	fi
done


# function to search recursively
search()
{

local dir="$1"
for file in "$dir"/*
do
	if [ -d $file ]
	 then
		#  If it's a directory, call the function again
		search "$file"
	elif [ -f "$file" ] && [ -x "$file" ]
	 then
		# If file has executable option, list the file
		ls -l $file
	fi
done
}

search "/"

