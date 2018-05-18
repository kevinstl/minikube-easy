#!/bin/bash

./initialize.sh

#Borrowed from https://mtpereira.com/local-development-k8s.html
#kubectl delete -f local-registry.yml
helm del --purge easy-registry

#./stop.sh