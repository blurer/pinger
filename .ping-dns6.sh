#!/bin/bash
# in order: 
# - OpenDNS
# - Google
# - Adguard
# - Cloudflare
# - Quad9

for DC in 2620:119:35::35 2620:119:53::53 2001:4860:4860::8888 2001:4860:4860::8844 2a10:50c0::ad1:ff 2a10:50c0::ad2:ff 2606:4700:4700::64 2606:4700:4700::6400 2620:fe::fe 2620:fe::9 
do
    printf "$DC: \t$(ping -i .2 -c 10 -q $DC | awk -F/ '/^round|^rtt/{print $5}') ms\n" | expand -t 20
done