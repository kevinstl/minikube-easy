#!/bin/bash


echo begin jenkins install initialize!!!!!


jenkinsInstallationStatus=`kubectl get namespaces | grep continuous-integration`
echo $jenkinsInstallationStatus
if [ "$jenkinsInstallationStatus" != "" ]
then
    echo "previous jenkins installation still running"
    sleep 5
    ./jenkins-install-initialize.sh
else
    echo "previous jenkins installation purged"
fi



echo end jenkins install initialize!!!!!






