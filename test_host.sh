#!/bin/bash
#测试 192.168.4.0/24 整个网段中哪些主机处于开机状态,哪些主机处于关机状态

for i in {1..254};do
	# 每隔0.3秒ping一次，一共ping 3次，并以1毫秒为单位设置ping的超时时间.
	ping -c 3 -i 0.3  -w 1 192.168.4.$i  &> /dev/null
	#若返回状态码为0则主机在线，否则主机不在线
	if [ $? -eq 0 ];then
		echo "192.168.94.$i up !"
	else
		echo "192.168.94.$i down"
	fi
done
