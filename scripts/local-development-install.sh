#!/bin/bash

#credentialsXml=$1

./install.sh
#./jenkins-install.sh $credentialsXml
#./artifactory-install.sh

./jenkins-pod-preset-volume-host-home-install.sh

./cockpit-install.sh


