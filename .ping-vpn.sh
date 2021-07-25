#!/bin/bash
# tailscale IPs for my network.

for DC in 100.67.202.108 100.94.183.13 100.66.59.128 100.100.52.78 100.109.228.105 100.96.63.38
do
    printf "$DC: \t$(ping -i .2 -c 10 -q $DC | awk -F/ '/^round|^rtt/{print $5}') ms\n" | expand -t 20
done