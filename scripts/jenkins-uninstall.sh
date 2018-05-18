#!/bin/bash

status=`minikube status | grep minikube: | awk '{print $2}'`
echo minikube is $status
if [ "$status" != "Running" ]
then
    ./initialize.sh
fi


#kubectl delete -f jenkins.yml


helm del --purge jenkins

#kubectl delete -f jenkins-persistent-volume-claim.yml;
#kubectl delete -f jenkins-persistent-volume.yml;

#rm -rf /minikube/jenkins