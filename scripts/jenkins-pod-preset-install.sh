#!/bin/bash


nexusPassword=$1

./jenkins-pod-preset-secrets-install.sh $nexusPassword

status=`kubectl --namespace continuous-integration create -f ./templates/jenkins-pod-preset.yml 2>&1 | grep -E 'created|AlreadyExists'`


echo "jenkins-pod-preset message: $status"


if [ "$status" == "" ]
then
    sleep 3
    ./jenkins-pod-preset-install.sh
fi

