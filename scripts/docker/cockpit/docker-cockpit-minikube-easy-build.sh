#!/bin/bash

eval $(minikube docker-env)

docker build -t kevinstl/cockpt-minikube-easy:0.1.0 .
