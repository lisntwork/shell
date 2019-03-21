#!/bin/bash

if [ $UID -eq 0 ]
then
	yum -y install lrzsz
else
	echo "Non admin"
fi
