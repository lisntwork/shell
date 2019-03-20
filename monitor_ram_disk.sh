#!/bin/bash

disk_size = $(df / | awk '/\//{print $4}')

free_size = $(free | awk '/Mem/{print $4}')

while true
do	
if [ $disk_size -le 512000 -a $free_size -le 1024000 ]
then
	mail -s "Warning" root <<EOF
	Insufficient resource! 
EOF
fi
done

