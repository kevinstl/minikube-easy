#!/bin/bash

status=`kubectl --namespace jx create -f ./templates/jenkins-pod-preset-volume-host-home-master.yml 2>&1 | grep -E 'created|AlreadyExists'`
status=`kubectl --namespace jx create -f ./templates/jenkins-pod-preset-volume-host-home-slave.yml 2>&1 | grep -E 'created|AlreadyExists'`
status=`kubectl --namespace jx create -f ./templates/jenkins-pod-preset-volume-host-home-jhipster.yml 2>&1 | grep -E 'created|AlreadyExists'`
