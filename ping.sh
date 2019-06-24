#!/bin/bash

readarray array <<< $( cat "$@" )

for element in ${array[@]}
do
  ping -c 1 $element > /dev/null
  if [ $? -eq 0]; then
  echo -e "$element \e[92mUp \e[39m"
  else
  echo -s "$element \e[91mDown \e[39m"
  fi
done
