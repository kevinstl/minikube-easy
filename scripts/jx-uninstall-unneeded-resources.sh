#!/bin/bash

./initialize.sh

kubectl --namespace jx delete deployment jenkins-x-chartmuseum
#kubectl --namespace jx delete deployment jenkins-x-docker-registry
kubectl --namespace jx delete deployment jenkins-x-heapster
kubectl --namespace jx delete deployment jenkins-x-mongodb
kubectl --namespace jx delete deployment jenkins-x-monocular-api
kubectl --namespace jx delete deployment jenkins-x-monocular-prerender
kubectl --namespace jx delete deployment jenkins-x-monocular-ui
#kubectl --namespace jx delete deployment jenkins-x-nexus
kubectl --namespace jx delete deployment pipelinecontroller

kubectl --namespace jx delete service jenkins-x-chartmuseum
#kubectl --namespace jx delete service jenkins-x-docker-registry
kubectl --namespace jx delete service heapster
kubectl --namespace jx delete service jenkins-x-mongodb
kubectl --namespace jx delete service jenkins-x-monocular-api
kubectl --namespace jx delete service jenkins-x-monocular-prerender
kubectl --namespace jx delete service jenkins-x-monocular-ui
#kubectl --namespace jx delete service nexus

kubectl --namespace jx delete cronjob jenkins-x-gc-activities
kubectl --namespace jx delete cronjob jenkins-x-gc-previews
