#!/bin/bash

nexusPassword=$1
credentialsXml=$2



./initialize.sh

./helm-tiller-initialize.sh

kubectl create namespace artifacts

helm --namespace artifacts install --name artifactory \
        --set artifactory.resources.requests.cpu="500m" \
        --set artifactory.resources.limits.cpu="2" \
        --set artifactory.resources.requests.memory="150Mi" \
        --set artifactory.resources.limits.memory="500Mi" \
        --set artifactory.javaOpts.xms="150m" \
        --set artifactory.javaOpts.xmx="500m" \
        --set artifactory.service.type=NodePort \
        --set nginx.enabled=false \
        --set artifactory-service.spec.ports.port[0].nodePort=30011 \
        --set artifactory.image.repository=docker.bintray.io/jfrog/artifactory-oss stable/artifactory

#        --set artifactory.nodePort=30011 \

#        --set nginx.resources.requests.cpu="100m" \
#        --set nginx.resources.limits.cpu="250m" \
#        --set nginx.resources.requests.memory="100Mi" \
#        --set nginx.resources.limits.memory="200Mi" \
#        --set ingress.enabled=true \
#        --set ingress.hosts[0]="minikube" \


kubectl create -f ./templates/artifactory-service-supplement.yml