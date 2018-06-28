#!/bin/bash

./initialize.sh

./markserv-uninstall.sh

./markserv-install-initialize.sh


kubectl create namespace content

kubectl --namespace content apply -f ./templates/markserv.yml
kubectl --namespace content apply -f ./templates/markserv-service.yml
