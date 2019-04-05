#!/bin/bash

#ex: ./create-pv.sh minikube lightning-kube-testnet testnet

context=$1
namespace=$2
storage=$3
deployEnv=$4

echo "create-pvc.sh"

echo "context: ${context}"
echo "namespace: ${namespace}"
echo "storage: ${storage}"
echo "deployEnv: ${deployEnv}"

kubeContextArg=""
if [[ ${context} != "" ]]
then
    kubeContextArg="--context ${context}"
fi

namespaceArg=""
if [[ ${namespace} != "" ]]
then
    namespaceArg="--namespace ${namespace}"
fi

pvcYaml="./jx-jhipster-pvc.yaml"
#if [[ ${deployEnv} == "gke" ]]
#then
#fi



cat ${pvcYaml} | sed "s/\X_STORAGE_X/${storage}/" | kubectl ${kubeContextArg} ${namespaceArg} create -f -


#./create-pvc.sh minikube jx-local 5Gi
