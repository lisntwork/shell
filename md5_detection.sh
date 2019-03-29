#!/bin/bash
#根据 md5 校验码,检测文件是否被修改

for file in $(ls /etc/*.conf);do
	md5sum "$file" >>/var/log/conf_file.log
done



