#!/bin/bash

./initialize.sh

./nginx-uninstall.sh

./nginx-install-initialize.sh


kubectl create namespace content

kubectl --namespace content apply -f ./templates/nginx.yml
kubectl --namespace content apply -f ./templates/nginx-service.yml
#kubectl --namespace content apply -f ./templates/nginx-ingress.yml