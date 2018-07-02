#!/bin/bash

#docker login

eval $(minikube docker-env)

docker build -t kevinstl/jenkins-minikube-easy:latest .
