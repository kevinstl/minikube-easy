#!/bin/bash



jenkins-pod-preset-secrets-uninstall.sh

status=`kubectl --namespace continuous-integration create -f ./templates/jenkins-pod-preset.yml 2>&1 | grep -E 'created|AlreadyExists'`

kubectl --namespace continuous-integration delete -f ./templates/jenkins-pod-preset.yml

