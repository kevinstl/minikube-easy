#!/bin/bash

./initialize.sh

jx install --provider=kubernetes --on-premise
#jx install --provider=minikube --on-premise
#jx install --provider=minikube