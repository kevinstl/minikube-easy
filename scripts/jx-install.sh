#!/bin/bash

./initialize.sh

kubectl create namespace jx
kubectl create namespace jx-local
kubectl create namespace jx-staging
kubectl create namespace jx-production

#On 1-7-2019 I had to run this to get the install to complete
kubectl create clusterrolebinding jx-binding  --clusterrole=cluster-admin --user=admin --user=expose --group=system:serviceaccounts --serviceaccount=jx:expose --namespace=jx

kubectl create clusterrolebinding jx-staging --clusterrole=cluster-admin --user=admin --user=expose --group=system:serviceaccounts --serviceaccount=jx-staging:expose --namespace=jx-local

kubectl create clusterrolebinding jx-staging --clusterrole=cluster-admin --user=admin --user=expose --group=system:serviceaccounts --serviceaccount=jx-staging:expose --namespace=jx-staging

kubectl create clusterrolebinding jx-production --clusterrole=cluster-admin --user=admin --user=expose --group=system:serviceaccounts --serviceaccount=jx-production:expose --namespace=jx-productions


#jx install --provider=kubernetes --on-premise

mkdir -p ~/.jx
cp ./templates/myvalues.yaml ~/.jx/

jx install --provider=minikube --on-premise
#jx install --provider=minikube