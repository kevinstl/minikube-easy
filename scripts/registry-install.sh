#!/bin/bash

status=`minikube status | grep minikube: | awk '{print $2}'`
echo minikube is $status
if [ "$status" != "Running" ]
then
    ./initialize.sh
fi

#Borrowed from https://mtpereira.com/local-development-k8s.html
kubectl apply -f local-registry.yml

./stop.sh
./start.sh
