#!/bin/bash

for DC in NJ-US IL-US GA-US FL-US TX-US SJO-CA-US LAX-CA-US WA-US TOR-CA FRA-DE AMS-NL PAR-FR LON-GB SYD-AU SGP HND-JP SEL-KOR
do
    printf "$DC: \t$(ping -i .2 -c 10 -q $DC-ping.vultr.com | awk -F/ '/^round|^rtt/{print $5}') ms\n" | expand -t 20
done