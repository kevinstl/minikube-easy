#!/bin/bash

minikube delete
rm /usr/local/bin/minikube
rm -rf ~/.minikube

killall -9 minikube

#brew cask uninstall minikube

