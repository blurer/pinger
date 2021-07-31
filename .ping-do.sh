#!/bin/bash
# taken from: http://speedtest-sfo1.digitalocean.com/

for DC in nyc1 nyc2 nyc3 sfo1 sfo2 sfo3 tor1 lon1 fra1 ams2 ams3 sgp1 blr1
do
    printf "Digital Ocean - $DC: \t$(ping -i .2 -c 10 -q speedtest-$DC.digitalocean.com | awk -F/ '/^round|^rtt/{print $5}') ms\n" | expand -t 20
done

