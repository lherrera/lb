#!/bin/sh

ip=$1
for i in $(echo $ip |tr '.' ' '); do echo "obase=2 ; $i" |bc; done \
	|awk '{printf ".%08d", $1}' | cut -c2-

