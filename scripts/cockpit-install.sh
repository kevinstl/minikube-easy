#!/bin/bash

minikube ssh -- sudo mkdir -p /var/lib/localkube/config


kubectl create -f kubernetes-cockpit.json
