#!/bin/bash

parallel -u ::: 'bash ./.ping-dns.sh 1' 'bash ./.ping-aws.sh 2' 'bash ./.ping-do.sh 3'