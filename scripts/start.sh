#!/bin/bash


startWithCockpit=$1


#minikube start --vm-driver=xhyve --v=7 --alsologtostderr --cpus=4 --memory=12288 --disk-size=40g --insecure-registry localhost:5000 --extra-config=apiserver.Authentication.PasswordFile.BasicAuthFile=/var/lib/localkube/config/static-users.csv
#minikube start --vm-driver=hyperkit --v=7 --alsologtostderr --insecure-registry localhost:5000 --extra-config=apiserver.Authentication.PasswordFile.BasicAuthFile=/var/lib/localkube/config/static-users.csv
#minikube start --vm-driver=hyperkit --v=7 --alsologtostderr --cpus=4 --memory=12288 --disk-size=40g --insecure-registry localhost:5000
#minikube start --vm-driver=hyperkit --v=7 --alsologtostderr --cpus=4 --memory=12288 --disk-size=40g --insecure-registry localhost:5000 --extra-config=apiserver.Authentication.PasswordFile.BasicAuthFile=/var/lib/localkube/config/static-users.csv
#minikube start --vm-driver=hyperkit --v=7 --alsologtostderr --cpus=4 --memory=12288 --disk-size=40g --insecure-registry localhost:5000 --extra-config=apiserver.basic-auth-file="/var/lib/localkube/config/static-users.csv"
#minikube start --vm-driver=hyperkit --v=7 --alsologtostderr --cpus=4 --memory=12288 --disk-size=40g --insecure-registry localhost:5000 --extra-config=apiserver.Authentication.PasswordFile.basic-auth-file=/var/lib/localkube/config/static-users.csv --extra-config=apiserver.Authentication.PasswordFile.BasicAuthFile=/var/lib/localkube/config/static-users.csv
#minikube start --vm-driver=hyperkit --v=7 --alsologtostderr --cpus=4 --memory=12288 --disk-size=40g --insecure-registry localhost:5000 --extra-config=apiserver.Authentication.PasswordFile.BasicAuthFile=/var/lib/localkube/config/static-users.csv
#minikube start --vm-driver=hyperkit --v=7 --alsologtostderr --cpus=4 --memory=12288 --disk-size=40g --insecure-registry localhost:5000 --extra-config=apiserver.Authentication.PasswordFile.BasicAuthFile=/var/lib/localkube/config/static-users.csv
#minikube start --vm-driver=hyperkit --v=7 --alsologtostderr --cpus=4 --memory=12288 --disk-size=40g --insecure-registry localhost:5000

#This thread may help if upgrading to 0.26.0: https://gist.github.com/F21/08bfc2e3592bed1e931ec40b8d2ab6f5

echo "starting minikube"


basicAuth=""


if [ "$startWithCockpit" == "cockpit" ]
then
    echo "Starting with cockpit."

    basicAuth="--extra-config=apiserver.basic-auth-file=/var/lib/localkube/certs/config/static-users.csv"

#    minikube start --vm-driver=hyperkit --v=7 --alsologtostderr --cpus=4 --memory=12288 --disk-size=40g \
#    --extra-config=apiserver.basic-auth-file=/var/lib/localkube/certs/config/static-users.csv \
#    --extra-config=apiserver.admission-control="NamespaceLifecycle,LimitRanger,ServiceAccount,PersistentVolumeLabel,DefaultStorageClass,DefaultTolerationSeconds,MutatingAdmissionWebhook,ValidatingAdmissionWebhook,ResourceQuota,PodPreset"

#minikube start --vm-driver=hyperkit --v=7 --alsologtostderr --cpus=4 --memory=12288 --disk-size=40g \
#minikube start --vm-driver=hyperkit --v=7 --alsologtostderr --cpus=3 --memory=6144 --disk-size=40g \
#    --extra-config=apiserver.basic-auth-file=/var/lib/localkube/certs/config/static-users.csv \
#    --extra-config=apiserver.admission-control="NamespaceLifecycle,LimitRanger,ServiceAccount,PersistentVolumeLabel,DefaultStorageClass,DefaultTolerationSeconds,MutatingAdmissionWebhook,ValidatingAdmissionWebhook,ResourceQuota,PodPreset" \
#    --extra-config=apiserver.runtime-config=api/all=true

else
    echo "Starting without cockpit."

#    minikube start --vm-driver=hyperkit --v=7 --alsologtostderr --cpus=4 --memory=12288 --disk-size=40g \
#    --extra-config=apiserver.admission-control="NamespaceLifecycle,LimitRanger,ServiceAccount,PersistentVolumeLabel,DefaultStorageClass,DefaultTolerationSeconds,MutatingAdmissionWebhook,ValidatingAdmissionWebhook,ResourceQuota,PodPreset"

#    minikube start --vm-driver=hyperkit --v=7 --alsologtostderr --cpus=4 --memory=12288 --disk-size=40g \
#minikube start --vm-driver=hyperkit --v=7 --alsologtostderr --cpus=1 --memory=6144 --disk-size=40g \
#    --extra-config=apiserver.admission-control="NamespaceLifecycle,LimitRanger,ServiceAccount,PersistentVolumeLabel,DefaultStorageClass,DefaultTolerationSeconds,MutatingAdmissionWebhook,ValidatingAdmissionWebhook,ResourceQuota,PodPreset" \
#    --extra-config=apiserver.runtime-config=api/all=true

fi


minikube start --vm-driver=hyperkit --v=7 --alsologtostderr --cpus=3 --memory=8192 --disk-size=250g \
    ${basicAuth} \
    --extra-config=apiserver.admission-control="NamespaceLifecycle,LimitRanger,ServiceAccount,PersistentVolumeLabel,DefaultStorageClass,DefaultTolerationSeconds,MutatingAdmissionWebhook,ValidatingAdmissionWebhook,ResourceQuota,PodPreset" \
    --extra-config=apiserver.runtime-config=api/all=true


#    --extra-config=apiserver.Authorization.Mode=RBAC \
#    --extra-config=apiserver.admission-control="PodPreset"

echo "started minikube"

./mount-host-home.sh
./mount-network-drive.sh

sudo ./hosts-edit.sh "minikube-easy" `minikube ip` /etc/hosts

minikube ssh -- sudo swapoff -a

