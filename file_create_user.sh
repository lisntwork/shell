#!/bin/bash
#使用 user.txt 文件中的人员名单,在计算机中自动创建对应的账户并配置初始密码本脚本执行,需要提前准#备一个 user.txt 文件,该文件中包含有若干用户名信息


for i in `cat user.txt`;do
	useradd $i
	echo "$i" | passwd --stdin $i
done
