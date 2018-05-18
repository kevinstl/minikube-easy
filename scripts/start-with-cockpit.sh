#!/bin/bash



#minikube start --vm-driver=xhyve --v=7 --alsologtostderr --cpus=4 --memory=12288 --disk-size=40g --insecure-registry localhost:5000 --extra-config=apiserver.Authentication.PasswordFile.BasicAuthFile=/var/lib/localkube/config/static-users.csv
#minikube start --vm-driver=hyperkit --v=7 --alsologtostderr --insecure-registry localhost:5000 --extra-config=apiserver.Authentication.PasswordFile.BasicAuthFile=/var/lib/localkube/config/static-users.csv
#minikube start --vm-driver=hyperkit --v=7 --alsologtostderr --cpus=4 --memory=12288 --disk-size=40g --insecure-registry localhost:5000
#minikube start --vm-driver=hyperkit --v=7 --alsologtostderr --cpus=4 --memory=12288 --disk-size=40g --insecure-registry localhost:5000 --extra-config=apiserver.Authentication.PasswordFile.BasicAuthFile=/var/lib/localkube/config/static-users.csv
#minikube start --vm-driver=hyperkit --v=7 --alsologtostderr --cpus=4 --memory=12288 --disk-size=40g --insecure-registry localhost:5000 --extra-config=apiserver.Authentication.PasswordFile.BasicAuthFile=/host-home/.minikube/config/static-users.csv
#minikube start --vm-driver=hyperkit --v=7 --alsologtostderr --cpus=4 --memory=12288 --disk-size=40g --insecure-registry localhost:5000 --extra-config=apiserver.basic-auth-file="/var/lib/localkube/config/static-users.csv"
#minikube start --vm-driver=hyperkit --v=7 --alsologtostderr --cpus=4 --memory=12288 --disk-size=40g --insecure-registry localhost:5000 --extra-config=apiserver.Authentication.PasswordFile.basic-auth-file=/var/lib/localkube/config/static-users.csv --extra-config=apiserver.Authentication.PasswordFile.BasicAuthFile=/var/lib/localkube/config/static-users.csv
#minikube start --vm-driver=hyperkit --v=7 --alsologtostderr --cpus=4 --memory=12288 --disk-size=40g --insecure-registry localhost:5000

#This works with minikube v0.25.2

#minikube start --vm-driver=hyperkit --v=7 --alsologtostderr --cpus=4 --memory=12288 --disk-size=40g --insecure-registry localhost:5000 --extra-config=apiserver.Authentication.PasswordFile.BasicAuthFile=/var/lib/localkube/config/static-users.csv


#minikube start --vm-driver=hyperkit --v=7 --alsologtostderr --cpus=4 --memory=12288 --disk-size=40g --insecure-registry localhost:5000 --extra-config=apiserver.basic-auth-file=/var/lib/localkube/config/static-users.csv
#minikube start --vm-driver=hyperkit --v=7 --alsologtostderr --cpus=4 --memory=12288 --disk-size=40g --insecure-registry localhost:5000 --extra-config=apiserver.BasicAuthFile=/var/lib/localkube/config/static-users.csv

./start.sh cockpit

#nohup minikube mount ~:/host-home &
