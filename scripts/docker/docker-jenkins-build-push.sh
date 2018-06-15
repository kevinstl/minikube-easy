#!/bin/bash

docker login

docker build -f ./Dockerfile-jenkins -t kevinstl/jenkins-minikube-easy .
docker push kevinstl/jenkins-minikube-easy