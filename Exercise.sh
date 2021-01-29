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
	echo "Andrews_Group already exists"
then
	groupadd Andrews_Group -g 1020
fi

if  -b /dev/sdb1

then
	echo "/dev/sdb1 exists"
else
	echo -e "n\np\n1\n\n3G\nw" | fdisk /dev/sdb
	pvcreate /dev/sdb1
fi

if  [-b /dev/sdc1]

then
	echo "/dev/sdc1 exists"
else
	echo -e "n\np\n1\n\n3G\nw" | fdisk /dev/sdc
	pvcreate /dev/sdc1
fi
if cat /etc/hostname == "exercise_server"
then
	echo "hostname already set up"
else
	echo "exercise_server" >> /etc/hostname
fi

if cat /etc/hosts| grep 192.168.1.92 Server2
then
	echo "client alias already set"
else
	 echo "192.168.1.92 server2" >> /etc/hosts 
fi

if vgs| grep exercisevg
then
	echo "VG is already created"
else
	echo vgcreate exercisevg /dev/sdb1 /dev/sdc1
fi

if lvs |grep exercise.fs
then
	echo "LV is already created"
else
	lvcreate -n exercise.fs -L 12G exercisevg
fi

if cat /etc/fstab| grep /dev/exercisevg/exercise.fs
then
	echo "xfs already in fstab, no action needed"
else
	 echo "/dev/exercisevg/exercise.fs /exercise xfs defaults 0 0" >> /etc/hosts 
fi

ifconfig enp0s3 192.168.1.99 netmask 192.168.1.99

if cat /etc/selinux/config |grep SELINUX=disabled
then
	echo "selinux is already disabled"
else
	echo SELINUX=disabled >> /etc/selinux/config
fi

