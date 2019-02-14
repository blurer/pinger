# pinger.sh
Simple bash script to ping a list of hosts

## Installation and usage
``git clone https://github.com/blurer/pinger.git``

```
cd pinger
chmod +x pinger.sh
./pinger.sh
```

Contents of file we're using (ip_list.txt):
```
bl@apollo:~/pinger$ cat ip_list.txt
192.168.1.1
192.168.1.2
192.168.1.3
192.168.1.4
192.168.1.5
```
Usage:

```
bl@apollo:~/pinger$ ./pinger.sh
IP List Filename?
ip_list.txt
Node 192.168.1.1 is up
Node 192.168.1.2 is down
Node 192.168.1.3 is up
Node 192.168.1.4 is up
Node 192.168.1.5 is up
```
