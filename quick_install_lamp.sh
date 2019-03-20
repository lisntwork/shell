#!/bin/bash

yum -y insall httpd
yum -y install mariadb mariadb-devel mariadb-serveryum -y install php php-mysql

systemctl start httpd mariadb
systemctl enable httpd mariadb

