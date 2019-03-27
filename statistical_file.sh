#!/bin/bash
# 统计/var/log 有多少个文件,并显示这些文件名 
# 使用 ls 递归显示所有,再判断是否为文件,如果是文件则计数器加 1

count=0

for file in `ls /var/log/*`;do
	if [ -f $file ];then
		let count++
	fi
done
	echo "count file : $count"
