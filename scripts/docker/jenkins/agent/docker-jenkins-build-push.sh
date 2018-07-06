#!/bin/bash

#docker login

eval $(minikube docker-env)

./docker-jenkins-build.sh
docker push kevinstl/jenkins-agent-minikube-easy:0.1.0