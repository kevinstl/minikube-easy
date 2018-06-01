#!/bin/bash



./jenkins-pod-preset-secrets-uninstall.sh


kubectl --namespace continuous-integration delete -f ./templates/jenkins-pod-preset-master.yml
kubectl --namespace continuous-integration delete -f ./templates/jenkins-pod-preset-slave.yml

