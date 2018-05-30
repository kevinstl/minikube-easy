#!/bin/bash

./initialize.sh


#kubectl delete -f jenkins.yml


helm del --purge jenkins

kubectl --namespace continuous-integration delete -f ./templates/jenkins-pod-preset.yml

#kubectl delete -f jenkins-persistent-volume-claim.yml;
#kubectl delete -f jenkins-persistent-volume.yml;

#rm -rf /minikube/jenkins