# pinger.sh
Revamped Jul 2021. Got the idea from this fantastic idea https://github.com/jakejarvis/datacenter-speed-tests, but modified for the following:

1) make it for latency only 
2) select single provider
3) popular DNS servers
4) custom IPs (local usage, etc).

## Installation and usage
``git clone https://github.com/blurer/pinger.git``

Usage, chmod +x or run it with pyton (as shown below). Then use numbers and hit enter. Script runs .ping-{type}.sh and then returns to the menu. 

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
8: Custom
#############################################
Select Number (q to quit) 1
```

```
###############################################
                  IPv4 DNS
#############################################
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