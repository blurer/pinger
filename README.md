# pinger.sh
Revamped Jul 2021. Still very much WIP. 

Old pinger was simply ping a text IP list. Expanded to include syntax and naming for datancers from: https://github.com/jakejarvis/datacenter-speed-tests 

Revamped pinger to include:
1) Select single provider
2) Popular DNS servers
3) custom IPs (local usage, etc).
4) Region specific (WIP)
5) ...tbd

## Installation and usage
``git clone https://github.com/blurer/pinger.git``

Usage, ``chmod +x pinger.py`` or run it with ``python3 pinger.py``. Then use numbers and hit enter. Script runs .ping-{type}.sh and then returns to the menu. 

```
[bryan:~/projects/pinger]$ python3 pinger.py                     (master✱) 
#############################################
                  Ping Test
#############################################
1: Ping IPv4 DNS
2: Ping IPv6 DNS
3: Ping AWS
4: Ping DigitalOcean
5: Ping Linode 
6: Ping GCP
7: Ping Vultr
8: Ping All
9: Ping All - Region
10: Custom
11: Ping VPN
#############################################
Select Number (q to quit) 
```

### Example - #1 (DNS)
```
###############################################
                  IPv4 DNS
###############################################
208.67.222.222:     4.070 ms
208.67.220.220:     4.149 ms
8.8.8.8:            4.232 ms
8.8.4.4:            4.463 ms
94.140.14.14:       4.010 ms
94.140.15.15:       3.848 ms
1.1.1.1:            4.449 ms
1.0.0.1:            4.355 ms
9.9.9.9:            4.521 ms
149.112.112.112:    4.390 ms
#############################################
Press q to quit, 0 to restart) 
```
### Example - #2 (DNS - IPv6)
```
###############################################
                  IPv6 DNS
###############################################
2620:119:35::35:    4.245 ms
2620:119:53::53:    4.233 ms
2001:4860:4860::8888:                   4.343 ms
2001:4860:4860::8844:                   4.368 ms
2a10:50c0::ad1:ff:  3.960 ms
2a10:50c0::ad2:ff:  4.319 ms
2606:4700:4700::64:                     5.172 ms
2606:4700:4700::6400:                   4.788 ms
2620:fe::fe:        4.190 ms
2620:fe::9:         4.605 ms
#############################################
Press q to quit, 0 to restart) 
```

### Example - #3 (AWS)
```
#############################################
                  AWS
#############################################
us-east-1:          175.369 ms
us-east-2:          162.349 ms
us-west-1:          110.469 ms
us-west-2:          126.753 ms
ca-central-1:       182.113 ms
eu-north-1:         280.341 ms
eu-central-1:       265.024 ms
eu-west-1:          231.149 ms
eu-west-2:          222.727 ms
eu-west-3:          228.833 ms
eu-north-1:         290.993 ms
eu-south-1:         256.941 ms
ap-east-1:          57.533 ms
ap-northeast-1:     11.611 ms
ap-northeast-2:     37.497 ms
ap-south-1:         237.611 ms
ap-southeast-1:     76.764 ms
ap-southeast-2:     131.771 ms
sa-east-1:          282.182 ms
me-south-1:         264.557 ms
af-south-1:         384.967 ms
#############################################
Press q to quit, 0 for menu) 
```