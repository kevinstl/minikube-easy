#!/bin/bash


nexusPassword=`echo $1 | base64`

echo "encrypted nexusPassword: $nexusPassword"

kubectl --namespace jx delete -f ./templates/jenkins-pod-preset-secrets.yml

