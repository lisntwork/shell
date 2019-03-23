#!/bin/bash
#编写脚本,显示进度条

schedule(){
	while true;do
		echo -n "#"
		sleep 0.2
	done
	}
schedule &
cp -a $1 $2
killall $1
echo "copy end !"
