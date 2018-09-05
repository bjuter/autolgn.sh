#!/usr/bin/env bash

# Best used with cron jobs
# 
# */5 * * * * <user> <path>/autolgn.sh >> <path>/autolgn.log

DATE=`date '+%Y-%m-%d %H:%M:%S'`

user='<username>'
pwd='<password>'

r=`curl 'https://lgn.bjut.edu.cn/' --data "DDDDD=$user&v46s=1&v6ip=&0MKKey=&upass=$pwd" | grep 'You have successfully logged into our system.'`

if [ "${r}" == '' ]; then
  echo ${DATE} Failed
else
  echo ${DATE} Success
fi
