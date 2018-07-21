#!/bin/bash

start=$1

./uninstall.sh

./kubectl-install.sh
./hyperkit-driver-install.sh
./minikube-install.sh

if [ "$start" == "start" ]
then
    ./start.sh
fi