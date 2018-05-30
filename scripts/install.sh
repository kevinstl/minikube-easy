#!/bin/bash

start=$1

./kubectl-install.sh
#./xhyve-driver-install.sh
./hyperkit-driver-install.sh
./minikube-install.sh

if [ "$start" == "start" ]
then
    ./start.sh
fi