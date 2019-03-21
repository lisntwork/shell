#!/bin/bash

#提示用户输入用户名和密码,脚本自动创建相应的账户及配置密;。
#如果用户不输入账户名,则提示必须输入账户名并退出脚本;
#如果用户不输入密码,则统一使用默认的 123456 作为默认密码.

read -p "please enter user name: " name
if [ -z $name ]
then
    echo "error:useo name None"
    exit 0
fi	
useradd $name
stty -echo
read -p "please enter user pawd: " pawd
stty echo
pawd=${pawd:-123456}
echo "$pawd" | passwd --stdin "$name"


