#!/bin/bash


nexusPassword=`echo $1 | base64`

echo "encrypted nexusPassword: $nexusPassword"

#cat Deployment.yaml | sed s/\$\$EXTERNAL_IP/1.2.3.4/ | kubectl create -f -

cat ./templates/jenkins-pod-preset-secrets.yml | sed "s/\X_NEXUS_PASSWORD_X/$nexusPassword/" | kubectl --namespace jx create -f -
#cat ./templates/jenkins-pod-preset-secrets.yml | sed "s/\X_NEXUS_PASSWORD_X/$nexusPassword/"

#status=`kubectl --namespace continuous-integration create -f ./templates/jenkins-pod-preset.yml 2>&1 | grep -E 'created|AlreadyExists'`
#
#
#echo "jenkins-pod-preset message: $status"
#
#
#if [ "$status" == "" ]
#then
#    sleep 3
#    ./jenkins-install-pod-preset.sh
#fi

