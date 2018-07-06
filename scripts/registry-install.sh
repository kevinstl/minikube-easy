#!/bin/bash

./initialize.sh

#Borrowed from https://mtpereira.com/local-development-k8s.html
#kubectl apply -f local-registry.yml

kubectl create namespace dev-services

#helm install --name easy-registry --namespace dev-services --set service.type=NodePort --set service.nodePort=30011 --set s3.secure=true stable/docker-registry
helm install --name easy-registry --namespace dev-services --set service.type=NodePort --set service.nodePort=30013 stable/docker-registry


sudo ./hosts-edit.sh "easy-registry-docker-registry.dev-services" `minikube ip` /etc/hosts


#./stop.sh
#./start.sh
