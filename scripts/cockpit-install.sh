#!/bin/bash


status=`minikube status | grep minikube: | awk '{print $2}'`
echo minikube is $status
if [ "$status" != "Running" ]
then
    ./initialize.sh
fi

minikube ssh -- sudo mkdir -p /var/lib/localkube/config
minikube ssh -- 'sudo bash -c "echo \"changeme,kube,1\" > /var/lib/localkube/config/static-users.csv"'

cat kubernetes-cockpit.json-template | sed s/X_KUBERNETES_SERVICE_HOST_X/`minikube ip`/g > kubernetes-cockpit.json-fixed

kubectl create -f kubernetes-cockpit.json-fixed

./stop.sh
./start-with-cockpit.sh
