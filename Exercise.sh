#!/bin/bash

echo "this is a script"
if cat /etc/passwd |grep Milton
	cat /etc/passwd|grep Andrew
then
	echo "Milton already exists"
	echo "Andrew already exists"
else
	useradd Milton
	useradd Andrew
fi



groupadd Andrews_Group -g 1020

usermod Andrew -a -G Andrews_Group

chmod 775 /exercise2
chown Andrew:Andrews_Group /exercise2

