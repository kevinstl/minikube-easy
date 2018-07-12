#!/bin/bash

minikube delete

./stop.sh

rm /usr/local/bin/minikube
rm -rf ~/.minikube


#killall -9 minikube

#brew cask uninstall minikube

