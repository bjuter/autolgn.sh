#!/usr/bin/env bash

# Read username & password from stdin
# Suited for public computers where credentials are not saved

DATE=`date '+%Y-%m-%d %H:%M:%S'`

read -p 'username: ' user
read -p 'password: ' -s pwd
echo

r=`curl 'https://lgn.bjut.edu.cn/' --data "DDDDD=$user&v46s=1&v6ip=&0MKKey=&upass=$pwd" 2> /dev/null | grep 'You have successfully logged into our system.'`

if [ "${r}" == '' ]; then
  echo ${DATE} Failed
else
  echo ${DATE} Success
fi
