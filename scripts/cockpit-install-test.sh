#!/bin/bash


./initialize.sh

minikube ssh -- sudo mkdir -p /var/lib/localkube/certs/config
minikube ssh -- 'sudo bash -c "echo \"changeme,kube,1\" > /var/lib/localkube/certs/config/static-users.csv"'

cat kubernetes-cockpit.json-template | sed s/X_KUBERNETES_SERVICE_HOST_X/`minikube ip`/g > kubernetes-cockpit.json-fixed


kubectl create namespace dev-services

kubectl --namespace dev-services create -f kubernetes-cockpit.json-fixed


#./stop.sh
#./initialize.sh cockpit



##!/bin/bash
#
#
#./initialize.sh
#
##minikube ssh -- sudo mkdir -p /var/lib/localkube/config
##minikube ssh -- 'sudo bash -c "echo \"changeme,kube,1\" > /var/lib/localkube/config/static-users.csv"'
#
#cat cockpit-minikube-easy-template.json | sed s/X_KUBERNETES_SERVICE_HOST_X/`minikube ip`/g > cockpit-minikube-easy.json-fixed
#
#
#kubectl create namespace dev-services
#
#kubectl --namespace dev-services create -f cockpit-minikube-easy.json-fixed
#
##killall -9 minikube
#
##./stop.sh
##./initialize.sh cockpit
