#!/bin/bash

status=`minikube status | grep minikube: | awk '{print $2}'`
echo minikube is $status
if [ "$status" != "Running" ]
then
    ./initialize.sh
fi

#Borrowed from https://github.com/kenzanlabs/kubernetes-ci-cd
#kubectl apply -f jenkins.yml;

kubectl apply -f jenkins-persistent-volume.yml;
kubectl apply -f jenkins-persistent-volume-claim.yml;

#helm install --name jenkins stable/jenkins

#./stop.sh
#./start.sh
