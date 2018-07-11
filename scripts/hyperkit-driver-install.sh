#!/bin/bash

#From https://github.com/kubernetes/minikube/blob/master/docs/drivers.md#hyperkit-driver:

#curl -LO https://storage.googleapis.com/minikube/releases/latest/docker-machine-driver-hyperkit \

#curl -LO https://storage.googleapis.com/minikube/releases/v0.27.0/docker-machine-driver-hyperkit \

#curl -LO https://storage.googleapis.com/minikube/releases/v0.25.2/docker-machine-driver-hyperkit \

curl -LO https://storage.googleapis.com/minikube/releases/v0.27.0/docker-machine-driver-hyperkit \
&& chmod +x docker-machine-driver-hyperkit \
&& sudo mv docker-machine-driver-hyperkit /usr/local/bin/ \
&& sudo chown root:wheel /usr/local/bin/docker-machine-driver-hyperkit \
&& sudo chmod u+s /usr/local/bin/docker-machine-driver-hyperkit

