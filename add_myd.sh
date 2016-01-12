#!/bin/bash
if [ $# -lt 3 ];then
 echo "Usage:./a_myd <user name> <database name> <password>"
 exit
fi
echo "Please enter root password"
mysql -u root -p <<EOF
  create database $2 charset=utf8;
  grant all privileges on $2.* to $1@'%' identified by '$3';
  grant all privileges on $2.* to $1@'localhost' identified by '$3';
  flush privileges;
EOF


