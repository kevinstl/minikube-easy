#!/bin/bash

status=`minikube status | grep minikube: | awk '{print $2}'`
echo minikube is $status
if [ "$status" != "Running" ]
then
    ./initialize.sh
fi

#Borrowed from https://github.com/kenzanlabs/kubernetes-ci-cd
kubectl apply -f jenkins.yml;

#./stop.sh
#./start.sh
