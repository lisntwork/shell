#!/bin/bash

if [ $USER == 'root' ]
then
	yum -y install tree
else
	echo "Non admin" 
fi
