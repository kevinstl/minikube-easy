#!/bin/bash

start=$1

./kubectl-install.sh
#./xhyve-driver-install.sh
./hyperkit-driver-install.sh
./minikube-install.sh

if [ "$start" == "start" ]
then
    ./start.sh

    minikube ssh -- sudo mkdir -p /var/lib/localkube/config
    minikube ssh -- 'sudo bash -c "echo \"changeme,kube,1\" > /var/lib/localkube/config/static-users.csv"'

    ./stop.sh
    ./start-with-cockpit.sh
fi