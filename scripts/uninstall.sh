#!/bin/bash

./minikube-uninstall.sh
#./xhyve-driver-uninstall.sh
./hyperkit-driver-uninstall.sh
./kubectl-uninstall.sh

./stop.sh