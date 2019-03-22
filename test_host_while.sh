#!/bin/bash
#测试 192.168.4.0/24 整个网段中哪些主机处于开机状态,哪些主机处于关机状态(while 版本) 

declare -i n=1

while [ $n -lt 255 ];do
	ping -c 3 -i 0.3 -w 1 192.168.94.$n &> /dev/null
	if [ $? -eq 0 ];then
		echo "192.168.94.$n up !"
	else
		echo "192.168.94.$n down"
	fi
	let n++
done

	

