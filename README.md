# pinger.sh
Simple bash script to ping a list of hosts

## Installation and usage
``git clone https://github.com/blurer/pinger.git``

```
cd pinger
chmod +x pinger.sh
chmod +x coloredping.sh
```

If you want to use colored (red|green for down|up) use coloredping.sh


Contents of file we're using (dns.txt):
```
ec2-user at ip-172-26-4-10 in ~/dev/pinger on master*
$ cat dns.txt
1.1.1.1
1.0.0.1
8.8.8.8
8.8.4.4
9.9.9.9
208.67.222.222
208.67.220.220
```
Usage:

```
ec2-user at ip-172-26-4-10 in ~/dev/pinger on master*
$ ./coloredPing.sh
IP List Filename?
dns.txt
1.1.1.1 Up
1.0.0.1 Up
8.8.8.8 Up
8.8.4.4 Up
9.9.9.9 Up
208.67.222.222 Up
208.67.220.220 Up

```
