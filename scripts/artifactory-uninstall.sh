#!/bin/bash

./initialize.sh

helm del --purge artifactory

kubectl delete -f ./templates/artifactory-service-supplement.yml

kubectl delete namespace artifacts

