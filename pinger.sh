#!/bin/bash

echo "IP List Filename?" 
read filename
cat $filename | while read output
do
	ping -c 1 -w 0.1 "$output" > /dev/null
	if [ $? -eq 0 ]; then
	echo "Node $output is up"
	else
	echo "Node $output is down"
	fi
done
