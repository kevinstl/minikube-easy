#!/bin/bash

./initialize.sh

kubectl --namespace content delete deployment markserv-deployment
kubectl --namespace content delete service markserv-service

kubectl delete namespace content

