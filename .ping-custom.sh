#!/bin/bash

## Enter in the IPs after "for DC in"
## ex: for DC in 1.1.1.1

for DC in 192.168.11.1 192.168.11.140 192.168.11.117
do
    printf "$DC: \t$(ping -i .2 -c 10 -q $DC | awk -F/ '/^round|^rtt/{print $5}') ms\n" | expand -t 20
done