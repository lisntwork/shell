#!/bin/bash
#输入三个数并进行升序排序

read -p "please enter first numbers: " first
read -p "please enter second numbers: " second
read -p "please enter third numbers: " third

if [ $first -gt $second -a $first -gt $third ];then
	if [ $second -gt $third ];then
		echo "$first <-- $second <-- $third"
	else
		echo "$first <-- $third <-- $second"
	fi
fi

if [ $second -gt $first -a $second -gt $third ];then
	if [ $first -gt $third ];then
		echo "$second <-- $first <-- $third"
	else
		echo "$second <-- $third <-- $first"
	fi
fi

if [ $third -gt $first -a $third -gt $second ];then
	if [ $first -gt $second ];then
		echo "$third <-- $first <-- $second"
	else
		echo "$third <-- $second <-- $first"
	fi
fi
	
