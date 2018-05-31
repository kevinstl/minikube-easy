#!/bin/bash

status=`kubectl --namespace continuous-integration create -f ./templates/jenkins-pod-preset.yml 2>&1 | grep -E 'created|AlreadyExists'`


echo "jenkins-pod-preset message: $status"


if [ "$status" == "" ]
then
    sleep 3
    ./jenkins-install-pod-preset.sh
fi

