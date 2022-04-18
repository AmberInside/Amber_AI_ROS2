#! /bin/bash

PIDS=`ps -ef | grep "runserver" | grep -v grep | awk '{print $2}'`
if [ "$PIDS" != "" ]; then
	        echo "B1 Master server is running!!!!!!!"
#Check whether B1 Master Server is running,
else
nohup python3 amber_robot_studio_backend/manage.py runserver 0.0.0.0:8080 >/home/amber/p.out 2>&1 &       

fi
