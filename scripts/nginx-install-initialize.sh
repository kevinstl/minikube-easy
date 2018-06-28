#!/bin/bash


echo begin nginx install initialize!!!!!


nginxInstallationStatus=`kubectl get namespaces | grep content`
echo $nginxInstallationStatus
if [ "$nginxInstallationStatus" != "" ]
then
    echo "previous nginx installation still running"
    sleep 5
    ./nginx-install-initialize.sh
else
    echo "previous nginx installation purged"
fi



echo end nginx install initialize!!!!!






