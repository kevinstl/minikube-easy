#!/bin/bash


echo begin helm tiller initialize!!!!!


tillerStatus=`kubectl --namespace kube-system get pods | grep tiller | grep "1/1"`
echo $tillerStatus
if [ "$tillerStatus" == "" ]
then
    echo "helm tiller not running"
    helm init
    sleep 5
    ./helm-tiller-initialize.sh
else
    echo "helm tiller running"
fi



echo end helm tiller initialize!!!!!






