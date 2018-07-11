#!/bin/bash

credentialsXml=$1

./install.sh
./jenkins-install.sh $credentialsXml
./artifactory-install.sh
#./cockpit-install.sh

