#!/bin/bash

#docker login

eval $(minikube docker-env)

docker build -t kevinstl/jenkins-agent-minikube-easy:latest .
