#/bin/sh

if [ $# -eq 0 ];then
    ip=$(tail -n 1 /var/run/manageIP)
    #DATE=$(date)
    #echo $DATE
    echo "To access console from http://"${ip:0:${#ip}-1}":8080"
    ssh "${ip:0:${#ip}-1}" python /root/vmm/manage.py runserver 0:8080

    #echo "############################################"
    #echo "Ip address of the web console:${ip}"
    #echo "Port:8080"
    #echo "############################################"
else
    echo "Error:need no arguments,please try it again."
fi
