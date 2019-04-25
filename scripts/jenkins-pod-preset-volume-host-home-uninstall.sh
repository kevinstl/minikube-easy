#!/bin/bash

kubectl --namespace jx delete -f ./templates/jenkins-pod-preset-volume-host-home-master.yml
kubectl --namespace jx delete -f ./templates/jenkins-pod-preset-volume-host-home-slave.yml
kubectl --namespace jx delete -f ./templates/jenkins-pod-preset-volume-host-home-jhipster.yml

