#!/bin/bash

timestamp=$(date '+%d%m%Y-%H%M%S')
myname="punita"
s3_bucket="upgrad-punita/logs"

sudo apt update -y
sudo apt install apache2 -y

if [ `service apache2 status | grep running | wc -l` == 1 ]
then
	echo "Apache2 is running"
else
	echo "Apache2 is not running"
	echo "Starting apache2"
	sudo service apache2 start 

fi

if [ `service apache2 status | grep enabled | wc -l` == 1 ]
then
	echo "Apache2 is enabled"
else
	echo "Apache2 is not enabled"
	echo "Enabling apache2"
	sudo systemctl enable apache2
fi

