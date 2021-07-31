#!/bin/bash

for DC in us-east1 us-east4 us-west1 us-west2-a us-west2-b us-west3 us-central1 northamerica-northeast1 asia-east1 asia-east2 asia-northeast1 asia-northeast2 asia-south1 asia-southeast1 australia-southeast1 europe-north1 europe-west1 europe-west2 europe-west3 europe-west4 europe-west6 southamerica-east1
do
    printf "Google - $DC: \t$(ping -i .2 -c 10 -q $DC-gce.cloudharmony.net | awk -F/ '/^round|^rtt/{print $5}') ms\n" | expand -t 20
done