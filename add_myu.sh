#!/bin/bash
if [ $# -lt 2 ];then
 echo "Usage:./a_myu <user name> <password>"
 exit
fi
echo "Please enter root password"
mysql -u root -p <<EOF
  create user $1 identified by '$2';
EOF

