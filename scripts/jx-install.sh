#!/bin/bash

./initialize.sh

#this installs jx to mac
#brew tap jenkins-x/jx
#brew install jx


jx install --provider=kubernetes --on-premise
