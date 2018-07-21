#!/bin/bash

./initialize.sh


brew tap jenkins-x/jx
brew install jx


#kubectl --namespace=kube-system set image deployments/tiller-deploy tiller=gcr.io/kubernetes-helm/tiller:v2.10.0-rc.1