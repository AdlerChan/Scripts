#!/bin/sh

ip=$(/sbin/ifconfig | awk '{if ( $1 == "inet" && $3 ~ /^Bcast/) print $2}' | cut -f2 -d ":")
echo $ip | awk '{print $1;}' >> /etc/rc.local
