#!/bin/bash

echo "Waiting for getting $1 ip address."
retries=4
old_size=`stat -c %s /var/run/manageIP`
sleep 1
new_size=`stat -c %s /var/run/manageIP`
while [ "$old_size" == "$new_size" -a $retries -gt 0 ]
do
    sleep 2
    new_size=`stat -c %s /var/run/manageIP`
    retries=`expr $(($retries-1))`
    echo $retries
done
if [ "$old_size" != "$new_size" ]; then
    ip=$(tail -n 1 /var/run/manageIP)
    echo "To access console from http://${ip:0:${#ip}-1}:8080"
else
    echo "wait $1 return ip address timeout!"
fi
