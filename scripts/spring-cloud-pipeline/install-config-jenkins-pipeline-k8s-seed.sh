#!/bin/bash


projectName=$1
projectNameSeedPrefix=""

if [ "$projectName" != "" ]
then
    projectNameSeedPrefix="$projectName-"
fi

cat ./config-jenkins-pipeline-k8s-seed.xml | sed s/X_KUBERNETES_SERVICE_HOST_X/`minikube ip`/g > ./config-jenkins-pipeline-k8s-seed-fixed.xml


curl -H "Content-Type: text/xml" -XPOST http://minikube:30010/createItem?name="$projectNameSeedPrefix"jenkins-pipeline-k8s-seed --data-binary "@./config-jenkins-pipeline-k8s-seed-fixed.xml"
