#!/bin/bash

startWithCockpit=$1

echo begin initialize minikube!!!!!


status=`minikube status | grep minikube: | awk '{print $2}'`
echo minikube is $status
if [ "$status" != "Running" ]
then
    echo "starting minikube"
    ./start.sh $startWithCockpit
    sleep 1
    ./initialize.sh $startWithCockpit

else
    echo "no need to start minikube"
fi


echo end initialize minikube!!!!!






