#!/bin/sh

if [ -z "$1" ]
then
    echo "No server/container name supplied"
    exit
fi

trap 'exit'  SIGHUP SIGINT SIGTERM

SERVER=$1
CLIENT=`ip a s eth0 | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}"`
echo "Client IP is $CLIENT"

while sleep 1
do  
	host -t a $SERVER 
	ping -c 1 $SERVER |head -1 |cut -f1 -d':'
done
