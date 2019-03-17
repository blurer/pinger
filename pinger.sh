#!/bin/bash

echo "IP List Filename?" 
read filename
cat $filename | while read output
do
	ping -c 1 -w 0.1 "$output" > /dev/null
	if [ $? -eq 0 ]; then
	echo -e "$output \e[92mUp \e[39m"
	else
	echo -e "$output \e[91mDown \e[39m"
	fi
done
