#!/bin/bash


echo begin markserv install initialize!!!!!


markservInstallationStatus=`kubectl get namespaces | grep content`
echo $markservInstallationStatus
if [ "$markservInstallationStatus" != "" ]
then
    echo "previous markserv installation still running"
    sleep 5
    ./markserv-install-initialize.sh
else
    echo "previous markserv installation purged"
fi



echo end markserv install initialize!!!!!






