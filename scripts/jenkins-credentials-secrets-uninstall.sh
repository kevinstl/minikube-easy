#!/bin/bash

#kubectl --namespace continuous-integration delete -f ./templates/jenkins-credentials-secrets.yml

kubectl --namespace continuous-integration delete secret jenkins-credentials

