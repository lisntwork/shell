#!/bin/bash
program=/usr/local/nginx/sbin/nginx
pid=/usr/local/nginx/logs/nginx.pid

start(){
	if [ -f $pid ];then
		echo "nginx service start"
	else
		$program 
	fi
	}
stop(){
	if [ ! -f $pid ];then
		echo "nginx service stop"
	else
		$program -s stop
		echo "nginx stop !"
	fi
	}
status(){
	if [ -f $pid ];then
		echo "nginx service start"
	else
		echo "nginx service stop!"
	fi
	}

case $1 in
	start)
		start
		;;
	stop)
		stop
		;;
	restart)
		stop
		sleep 1
		start
		;;
	status)
		status
		;;
	*)
		echo "pram error !"
		;;
esac
