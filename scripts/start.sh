#!/bin/bash

minikube start --vm-driver=xhyve --v=7 --alsologtostderr --cpus=4 --memory=12288 --disk-size=40g --extra-config=apiserver.Authentication.PasswordFile.BasicAuthFile=/var/lib/localkube/config/static-users.csv


