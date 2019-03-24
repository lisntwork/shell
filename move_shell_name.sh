#!/bin/bash
#编写批量修改扩展名脚本
for i in "ls *.$1";do
	mv $i ${i%.*}.$2
done
