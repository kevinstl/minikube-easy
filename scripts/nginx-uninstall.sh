#!/bin/bash

./initialize.sh

kubectl --namespace content delete deployment nginx-deployment
kubectl --namespace content delete service nginx-service
#kubectl --namespace content delete ingress nginx-ingress

kubectl delete namespace content

