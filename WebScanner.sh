#!/bin/bash
# Author: Nazir Bin Nazrul
# Description: This will help to scann any Web Application within short time.
# Date creation: 31/10/2024
# Last Modified: 31/10/2024
# Messi is the GOAT

echo
echo -e "Select scanning tool: \n1= nmap\n2= nikto\n3= dirb\n4= enum4linux"
read sel
echo
# 1st choice: nmap scan
if [[ $sel -eq 1 ]];
then
	echo "Enter the target IP:  "
	read IP
	nmap -p- -sS -sV -T4 -A -O $IP
	
elif [[ $sel -eq 2 ]];
then
	echo "Enter target IP: "
	read IP
	nikto -h $IP

# 3rd choice: dirb
elif [[ $sel -eq 3 ]];
then 
	echo "Enter the target IP: "
	read IP
	dirb http://$IP

# 4th choice: enum4linux
elif [[ $sel -eq 4 ]];
then 
	echo "Enter the target IP: "
	read IP
	enum4linux $IP

exit 0
fi
