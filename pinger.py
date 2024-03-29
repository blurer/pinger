#!/usr/bin/env python3
import os
import subprocess
from subprocess import call
import time
from time import sleep

# define clear function
def clear():
    # check and make call for specific operating system
    _ = call('clear' if os.name =='posix' else 'cls')

clear()
print("#"*45)
print("                  Ping Test")
print("#"*45)
print("1: Ping IPv4 DNS")
print("2: Ping IPv6 DNS")
print("3: Ping AWS")
print("4: Ping DigitalOcean")
print("5: Ping Linode ")
print("6: Ping GCP")
print("7: Ping Vultr")
print('8: Ping All')
print('9: Ping All - Region')
print("10: Custom")
print("11: Ping VPN")
print("#"*45)
choice = input("Select Number (q to quit) ")

while choice != 'q':
    if choice == '0':
        clear()
        print("#"*45)
        print("                  Ping Test")
        print("#"*45)
        print("1: Ping IPv4 DNS")
        print("2: Ping IPv6 DNS")
        print("3: Ping AWS")
        print("4: Ping DigitalOcean")
        print("5: Ping Linode ")
        print("6: Ping GCP")
        print("7: Ping Vultr")
        print('8: Ping All')
        print('9: Ping All - Region')
        print("10: Custom")
        print("11: Ping VPN")
        print("#"*45)
        choice = input("Select Number (q to quit) ")
    if choice == '1':
        clear()
        print("#"*45)
        print("                  IPv4 DNS")
        print("#"*45)
        subprocess.run(["bash", ".ping-dns.sh"])
        print("#"*45)
    elif choice == '2':
        clear()
        print("#"*45)
        print("                  IPv6 DNS")
        print("#"*45)
        subprocess.run(["bash", ".ping-dns6.sh"])
        print("#"*45)
    elif choice == '3':
        clear()
        print("#"*45)
        print("                  AWS")
        print("#"*45)
        subprocess.run(["bash", ".ping-aws.sh"])
        print("#"*45)
    elif choice == '4':
        clear()
        print("#"*45)
        print("                  Digital Ocean")
        print("#"*45)
        subprocess.run(["bash", ".ping-do.sh"])
        print("#"*45)
    elif choice == '5':
        clear()
        print("#"*45)
        print("                  Linode")
        print("#"*45)
        subprocess.run(["bash", ".ping-linode.sh"])
        print("#"*45)
    elif choice == '6':
        clear()
        print("#"*45)
        print("                Google Cloud")
        print("#"*45)
        subprocess.run(["bash", ".ping-gcp.sh"])
        print("#"*45)
    elif choice == '7':
        clear()
        print("#"*45)
        print("                  Vultr")
        print("#"*45)
        subprocess.run(["bash", ".ping-vultr.sh"])
        print("#"*45)
    elif choice == '8':
        clear()
        print("#"*45)
        print("                  All")
        print("Please wait. Running in parllel, then sorting.")
        print("#"*45)
        subprocess.run(["bash", ".ping-all.sh | sort"])
        print("#"*45)
    elif choice == '9':
        clear()
        print("#"*45)
        print("                  All - Region")
        print("#"*45)
        print("Select Region:")
        print("1: APAC")
        print("2: Americas")
        print("3: Europe")
        print("4: Africa")
        print("#"*45)
        regionSelect = input("Which Region: ")
        if regionSelect == "1":
            print("                  All - APAC")
            subprocess.run(["bash", ".ping-apac.sh"])            
    elif choice == '10':
        clear()
        print("#"*45)
        print("                  Custom")
        print("#"*45)
        subprocess.run(["bash", ".ping-custom.sh"])
    elif choice == '11':
        clear()
        print("#"*45)
        print("                  VPN Network")
        print("#"*45)
        subprocess.run(["bash", ".ping-vpn.sh"])
    else:
        clear()
        print("#"*45)
        print("That is not a valid input.")
        print("#"*45)
    choice = input("Press q to quit, 0 for menu) ")