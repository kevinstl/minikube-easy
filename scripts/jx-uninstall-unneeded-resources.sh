#!/bin/bash

./initialize.sh

kubectl --namespace jx delete deployment jenkins-x-chartmuseum
kubectl --namespace jx delete deployment jenkins-x-docker-registry
kubectl --namespace jx delete deployment jenkins-x-heapster
kubectl --namespace jx delete deployment jenkins-x-mongodb
kubectl --namespace jx delete deployment jenkins-x-monocular-api
kubectl --namespace jx delete deployment jenkins-x-monocular-prerender
kubectl --namespace jx delete deployment jenkins-x-monocular-ui
kubectl --namespace jx delete deployment jenkins-x-nexus
kubectl --namespace jx delete deployment pipelinecontroller
