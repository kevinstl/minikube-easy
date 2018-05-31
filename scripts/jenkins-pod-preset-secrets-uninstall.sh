#!/bin/bash


nexusPassword=`echo $1 | base64`

echo "encrypted nexusPassword: $nexusPassword"

kubectl --namespace continuous-integration delete -f ./templates/jenkins-pod-preset-secrets.yml

