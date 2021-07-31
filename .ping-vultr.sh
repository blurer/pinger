#!/bin/bash

for DC in nj-us il-us ga-us fl-us tx-us sjo-ca-us lax-ca-us wa-us tor-ca fra-de ams-nl par-fr lon-gb syd-au sgp hnd-jp sel-kor
do
    printf "Vultr - $DC: \t$(ping -i .2 -c 10 -q $DC-ping.vultr.com | awk -F/ '/^round|^rtt/{print $5}') ms\n" | expand -t 20
done