#!/bin/bash

#script that reads files and displays userif, username and department in consecutive lines

while IFS= read -r line
do
		#skips any empty lines
	if [ -z "$line" ]
		then
	     	continue
	fi

	    #extracting userid and user_info
	userid=$(echo "$line" | cut -d ',' -f1)
	user_info=$(echo "$line" | cut -d ',' -f2)
		#user_info extracts username:department

	username=$(echo "$user_info" | cut -d ':' -f1)
	userdept=$(echo "$user_info" | cut -d ':' -f2)

	echo "userid: $userid"
	echo "username: $username"
	echo "userdept: $userdept"

#input redirection
done < users.csv
