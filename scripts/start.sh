#!/bin/bash

#minikube start --vm-driver=xhyve --v=7 --alsologtostderr --cpus=4 --memory=12288 --disk-size=40g --insecure-registry localhost:5000 --extra-config=apiserver.Authentication.PasswordFile.BasicAuthFile=/var/lib/localkube/config/static-users.csv
#minikube start --vm-driver=hyperkit --v=7 --alsologtostderr --insecure-registry localhost:5000 --extra-config=apiserver.Authentication.PasswordFile.BasicAuthFile=/var/lib/localkube/config/static-users.csv
#minikube start --vm-driver=hyperkit --v=7 --alsologtostderr --cpus=4 --memory=12288 --disk-size=40g --insecure-registry localhost:5000
#minikube start --vm-driver=hyperkit --v=7 --alsologtostderr --cpus=4 --memory=12288 --disk-size=40g --insecure-registry localhost:5000 --extra-config=apiserver.Authentication.PasswordFile.BasicAuthFile=/var/lib/localkube/config/static-users.csv
#minikube start --vm-driver=hyperkit --v=7 --alsologtostderr --cpus=4 --memory=12288 --disk-size=40g --insecure-registry localhost:5000 --extra-config=apiserver.basic-auth-file="/var/lib/localkube/config/static-users.csv"
#minikube start --vm-driver=hyperkit --v=7 --alsologtostderr --cpus=4 --memory=12288 --disk-size=40g --insecure-registry localhost:5000 --extra-config=apiserver.Authentication.PasswordFile.basic-auth-file=/var/lib/localkube/config/static-users.csv --extra-config=apiserver.Authentication.PasswordFile.BasicAuthFile=/var/lib/localkube/config/static-users.csv
#minikube start --vm-driver=hyperkit --v=7 --alsologtostderr --cpus=4 --memory=12288 --disk-size=40g --insecure-registry localhost:5000 --extra-config=apiserver.Authentication.PasswordFile.BasicAuthFile=/var/lib/localkube/config/static-users.csv
#minikube start --vm-driver=hyperkit --v=7 --alsologtostderr --cpus=4 --memory=12288 --disk-size=40g --insecure-registry localhost:5000 --extra-config=apiserver.Authentication.PasswordFile.BasicAuthFile=/var/lib/localkube/config/static-users.csv
minikube start --vm-driver=hyperkit --v=7 --alsologtostderr --cpus=4 --memory=12288 --disk-size=40g --insecure-registry localhost:5000
#minikube start --vm-driver=hyperkit --v=7 --alsologtostderr --cpus=4 --memory=12288 --disk-size=40g --insecure-registry localhost:5000

mkdir /minikube
chown 777 /minikube

nohup minikube mount /minikube:/host-home &
