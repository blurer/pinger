#!/bin/bash

printf "\n\n"

#aws
for DC in ap-east-1 ap-northeast-1 ap-northeast-2 ap-south-1 ap-southeast-1 ap-southeast-2 
do
    printf "AWS - $DC: \t$(ping -i .2 -c 10 -q ec2.$DC.amazonaws.com | awk -F/ '/^round|^rtt/{print $5}') ms\n" | expand -t 20
done

#google cloud
for DC in asia-east1 asia-east2 asia-northeast1 asia-northeast2 asia-south1 asia-southeast1 australia-southeast1
do
    printf "Google - $DC: \t$(ping -i .2 -c 10 -q $DC-gce.cloudharmony.net | awk -F/ '/^round|^rtt/{print $5}') ms\n" | expand -t 20
done

#digital ocean
for DC in sgp1 blr1
do
    printf "Digital Ocean - $DC: \t$(ping -i .2 -c 10 -q speedtest-$DC.digitalocean.com | awk -F/ '/^round|^rtt/{print $5}') ms\n" | expand -t 20
done

#linode
for DC in asia-east1 asia-east2 asia-northeast1 asia-northeast2 asia-south1 asia-southeast1 australia-southeast1
do
    printf "Linode - $DC: \t$(ping -i .2 -c 10 -q $DC-gce.cloudharmony.net | awk -F/ '/^round|^rtt/{print $5}') ms\n" | expand -t 20
done

#vultr
for DC in syd-au sgp hnd-jp sel-kor
do
    printf "Vultr - $DC: \t$(ping -i .2 -c 10 -q $DC-ping.vultr.com | awk -F/ '/^round|^rtt/{print $5}') ms\n" | expand -t 20
done