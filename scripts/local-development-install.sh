#!/bin/bash

nexusPassword=$1
credentialsXml=$2

./install.sh
./jenkins-install.sh $nexusPassword $credentialsXml
./cockpit-install.sh

