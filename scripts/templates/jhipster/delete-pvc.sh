#!/bin/bash

context=$1
namespace=$2
deployEnv=$3

echo "delete-pvc.sh"

echo "context: ${context}"
echo "namespace: ${namespace}"
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

cat ./jx-jhipster-pvc.yaml | kubectl ${kubeContextArg} ${namespaceArg} delete -f -




#./delete-pvc.sh minikube jx-local
