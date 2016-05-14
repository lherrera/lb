#!/bin/sh

if [ -z "$1" ]
then
    echo "No server/container name supplied"
    exit
fi

trap 'exit'  SIGHUP SIGINT SIGTERM

SERVER=$1
while sleep 1
do  
	host -t a $SERVER
	ping -c 1 $SERVER |head -1 |cut -f1 -d':'
done
