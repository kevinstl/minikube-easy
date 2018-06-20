#!/bin/bash

#docker login

docker build -t kevinstl/jenkins-minikube-easy .
docker push kevinstl/jenkins-minikube-easy