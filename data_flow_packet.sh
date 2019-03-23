#!/bin/bash
#使用死循环实时显示 eth0 网卡发送的数据包流量

while true;do
	echo "local host etho data flow packets follow:"
	ifconfig ens33 | grep "RX packets" | awk '{print $5}'
	ifconfig ens33 | grep "TX packets" | awk '{print $5}'
	sleep 2
done


