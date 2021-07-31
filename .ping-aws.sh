#!/bin/bash

for DC in us-east-1 us-east-2 us-west-1 us-west-2 ca-central-1 eu-north-1 eu-central-1 eu-west-1 eu-west-2 eu-west-3 eu-north-1 eu-south-1 ap-east-1 ap-northeast-1 ap-northeast-2 ap-south-1 ap-southeast-1 ap-southeast-2 sa-east-1 me-south-1 af-south-1
do
    printf "AWS - $DC: \t$(ping -i .2 -c 10 -q ec2.$DC.amazonaws.com | awk -F/ '/^round|^rtt/{print $5}') ms\n" | expand -t 20
done