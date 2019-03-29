#!/bin/bash
#切割 Nginx 日志文件(防止单个文件过大,后期处理很困难)

log_path="/usr/local/nginx/logs/"

mv ${log_path}access.log ${log_path}access_$(data -d "yesterday"+"%Y%m%d").log 

kill -USR1 `cat /usr/local/nginx/logs/nginx.pid`
#chmod +x /data/script/nginx/nginx_log.sh
#crontab -e 
0	1	*	*	*	/data/scripts/nginx_log.sh 
