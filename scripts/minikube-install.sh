#!/bin/bash

#curl -Lo minikube https://storage.googleapis.com/minikube/releases/v0.23.0/minikube-darwin-amd64 && chmod +x minikube && sudo mv minikube /usr/local/bin/
#curl -Lo minikube https://storage.googleapis.com/minikube/releases/v0.26.1/minikube-darwin-amd64 && chmod +x minikube && sudo mv minikube /usr/local/bin/
#curl -Lo minikube https://storage.googleapis.com/minikube/releases/v0.25.0/minikube-darwin-amd64 && chmod +x minikube && sudo mv minikube /usr/local/bin/

#This works with --extra-config=apiserver.Authentication.PasswordFile.BasicAuthFile setting for starting minikube.
# Advice from kubernetes slack channel:
#kevinstl [12:18 PM]
#Does anyone know how to properly set the --extra-config for basic-auth-file? In v0.25.2 the following works perfectly: `--extra-config=apiserver.Authentication.PasswordFile.BasicAuthFile=/var/lib/localkube/config/static-users.csv` Starting in v0.26.0 setting this parameter causes startup to fail and you have to re-install minikube to get running again. Thanks. (edited)
#
#markmandel [12:56 PM]
#@kevinstl tbh, I've stayed on 0.25.2 - I can't make much work on 0.26.x :confused: hoping for fixes in newer releases. Make sure you file a bug though.
#curl -Lo minikube https://storage.googleapis.com/minikube/releases/v0.25.2/minikube-darwin-amd64 && chmod +x minikube && sudo mv minikube /usr/local/bin/

#curl -Lo minikube https://storage.googleapis.com/minikube/releases/v0.26.0/minikube-darwin-amd64 && chmod +x minikube && sudo mv minikube /usr/local/bin/
#curl -Lo minikube https://storage.googleapis.com/minikube/releases/v0.26.1/minikube-darwin-amd64 && chmod +x minikube && sudo mv minikube /usr/local/bin/

#curl -Lo minikube https://storage.googleapis.com/minikube/releases/v0.27.0/minikube-darwin-amd64 && chmod +x minikube && sudo mv minikube /usr/local/bin/
curl -Lo minikube https://storage.googleapis.com/minikube/releases/v0.28.0/minikube-darwin-amd64 && chmod +x minikube && sudo mv minikube /usr/local/bin/


#sudo ./hosts-edit.sh "minikube" `minikube ip` /etc/hosts

#killall -9 minikube