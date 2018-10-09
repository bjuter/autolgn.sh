#!/usr/bin/env bash

# For WLAN.
# Best used with cron jobs
# 
# */5 * * * * <user> <path>/autolgn_wlan.sh >> <path>/autolgn_wlan.log

DATE=`date '+%Y-%m-%d %H:%M:%S'`

user='<username>'
pwd='<password>'

r=`curl 'https://wlgn.bjut.edu.cn/' --data "DDDDD=$user&6MKKey=%B5%C7%C2%BC+Login&upass=$pwd" 2> /dev/null | iconv -f gbk | grep "You have successfully logged in"`

if [ "${r}" == '' ]; then
	echo ${DATE} Failed
else
	echo ${DATE} Success
fi
