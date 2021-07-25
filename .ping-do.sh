#!/bin/bash

for DC in NYC1 NYC2 NYC3 SFO1 SFO2 SFO3 TOR1 LON1 FRA1 AMS2 AMS3 SGP1 BLR1
do
    printf "$DC: \t$(ping -i .2 -c 10 -q speedtest-$DC.digitalocean.com | awk -F/ '/^round|^rtt/{print $5}') ms\n" | expand -t 20
done

