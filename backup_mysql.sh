#!/bin/bash

# 备份 MySQL 的 shell 脚本(mysqldump版本) 
# 定义变量 user(数据库用户名),passwd(数据库密码),date(备份的时间标签)
# dbname(需要备份的数据库名称,根据实际需求需要修改该变量的值,默认备份 mysql 数据库)

host=127.0.0.1
user=root
passwd=123456
dbname=mysql
data=$(data +%Y%d%m)

[ ! -d /mysqlbackup ] && mkdir /mysqlbackup
mysqldump -u "$user" -p "$passwd" "$dbname" > /mysqlbackup/"$dbname"-${data}.sql

