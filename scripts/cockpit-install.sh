#!/bin/bash


./initialize.sh

kubectl create clusterrolebinding test-cluster-admin-binding --clusterrole=cluster-admin --user=kube

minikube ssh -- sudo mkdir -p /var/lib/localkube/certs/config
minikube ssh -- 'sudo bash -c "echo \"changeme,kube,1\" > /var/lib/localkube/certs/config/static-users.csv"'

cat kubernetes-cockpit.json-template | sed s/X_KUBERNETES_SERVICE_HOST_X/`minikube ip`/g > kubernetes-cockpit.json-fixed


kubectl create namespace dev-services

kubectl --namespace dev-services create -f kubernetes-cockpit.json-fixed


./stop.sh
./initialize.sh cockpit
