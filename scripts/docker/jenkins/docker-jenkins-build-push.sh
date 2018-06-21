#!/bin/bash

#docker login

docker build -t kevinstl/jenkins-minikube-easy:latest .
docker push kevinstl/jenkins-minikube-easy:latest