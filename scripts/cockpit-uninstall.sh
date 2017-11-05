#!/bin/bash


status=`minikube status | grep minikube: | awk '{print $2}'`
echo minikube is $status
if [ "$status" != "Running" ]
then
    ./initialize.sh
fi


kubectl delete -f kubernetes-cockpit.json


./stop.sh