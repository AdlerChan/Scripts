#!/bin/bash

#cp -r spice-html5 /home/
#echo "cheking if /var/www/spice-html5 exists"
if [ -d /var/www/spice-html5 ];then
#echo "/var/www/spice-html5 not exists"
else
#echo "copy spice-html5"
cp -r /home/spice-html5  /var/www/
fi
#SpiceDir="/var/www/spice-html5"

#echo "cheking if $SpiceDir exists"
#if [ -d "$SpiceDir" ];then
#echo "$SpiceDir already exists, moving on"
#else
#echo "copy $SpiceDir"
#cp -r /home/spice-html5  /var/www/
#fi
