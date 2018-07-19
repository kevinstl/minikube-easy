#!/bin/bash

./initialize.sh


#./jenkins-pod-preset-uninstall.sh
./jenkins-credentials-secrets-uninstall.sh

helm del --purge jenkins

kubectl delete namespace continuous-integration

#rm -rf /minikube/jenkins