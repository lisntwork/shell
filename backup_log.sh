#!/bin/bash

tar    -cvf    log-`date +%Y%m%d`.tar.gz  /var/log
00	03	*	*	5	  /root/backup_log.sh 
