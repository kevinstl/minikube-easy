#!/bin/bash

./initialize.sh


#kubectl delete -f jenkins.yml

#kubectl --namespace continuous-integration delete -f ./templates/jenkins-pod-preset.yml
./jenkins-pod-preset-uninstall.sh

helm del --purge jenkins

kubectl delete namespace continuous-integration

#kubectl delete -f jenkins-persistent-volume-claim.yml;
#kubectl delete -f jenkins-persistent-volume.yml;

#rm -rf /minikube/jenkins