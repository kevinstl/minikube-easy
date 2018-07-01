#!/bin/bash

initMinikubeInstruction=$1


echo "initMinikubeInstruction: $initMinikubeInstruction"

if [ "$initMinikubeInstruction" != "skipInitMinikube" ]
then
    ./initialize.sh
fi

kubectl --namespace content delete deployment markserv-deployment
kubectl --namespace content delete service markserv-service

kubectl delete namespace content

