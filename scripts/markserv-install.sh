#!/bin/bash

$initMinikubeInstruction=$1

echo "initMinikubeInstruction: $initMinikubeInstruction"

if [ "$initMinikubeInstruction" != "skipInitMinikube" ]
then
    ./initialize.sh
fi

./markserv-uninstall.sh

./markserv-install-initialize.sh


kubectl create namespace content

kubectl --namespace content apply -f ./templates/markserv.yml
kubectl --namespace content apply -f ./templates/markserv-service.yml
