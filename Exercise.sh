#!/bin/bash

echo "this is a script"
if cat /etc/passwd |grep Milton

then
	echo "Milton already exists"
else
	useradd Milton
fi

if
	cat /etc/passwd |grep Andrew
then
	echo "Andrew already exists"
else
	useradd Andrew
fi

if
	cat /etc/group |grep Andrews_Group
else
	groupadd Andrews_Group -g 1020
then
	echo "Andrews_Group already exists"

if  -b /dev/sdb1

then
	echo "/dev/sdb1 exists"
else
	echo -e "n\np\n1\n\n3G\nw" | fdisk /dev/sdb
	pvcreate /dev/sdb1

if  -b /dev/sdc1

then
	echo "/dev/sdc1 exists"
else
	echo -e "n\np\n1\n\n3G\nw" | fdisk /dev/sdc
	pvcreate /dev/sdc1

if cat /etc/hostname |grep exercise_server
then
	echo "hostname already set up"
else
	vim /etc/hostname >> exercise_server

if cat /etc/hosts| grep 192.168.1.92 Server2
then
	echo "client alias already set"
else
	vim /etc/hosts >> 192.168.1.92 server2

