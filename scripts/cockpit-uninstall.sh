#!/bin/bash


status=`minikube status | grep minikube: | awk '{print $2}'`
echo minikube is $status
if [ "$status" != "Running" ]
then
    ./initialize.sh
fi


kubectl --namespace dev-services delete -f kubernetes-cockpit.json-fixed


#./stop.sh