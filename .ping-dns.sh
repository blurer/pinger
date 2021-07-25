#!/bin/bash
# in order: 
# - OpenDNS
# - Google
# - Adguard
# - Cloudflare
# - Quad9

for DC in 208.67.222.222 208.67.220.220 8.8.8.8 8.8.4.4 94.140.14.14 94.140.15.15 1.1.1.1 1.0.0.1 9.9.9.9 149.112.112.112
do
    printf "$DC: \t$(ping -i .2 -c 10 -q $DC | awk -F/ '/^round|^rtt/{print $5}') ms\n" | expand -t 20
done