#!/bin/bash
#点名器脚本

while true;do
	line=`cat user.txt | wc -l`
	numbers=$[RANDOM%line+1]
	sed -n "${numbers}p" user.txt
	sleep 0.2
	clear
done
