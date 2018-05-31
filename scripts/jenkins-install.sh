#!/bin/bash

nexusPassword=$1

./initialize.sh

./helm-tiller-initialize.sh

kubectl create namespace continuous-integration

./jenkins-pod-preset-install.sh $nexusPassword

helm install --name jenkins --namespace continuous-integration \
                --set Master.ServiceType=NodePort --set Master.NodePort=30010 --set Master.UseSecurity=false \
                --set rbac.install=true \
                --set Master.InstallPlugins[0]=kubernetes:1.6.0 --set Master.InstallPlugins[1]=workflow-aggregator:2.5 \
                --set Master.InstallPlugins[2]=workflow-job:2.21 --set Master.InstallPlugins[3]=credentials-binding:1.16 \
                --set Master.InstallPlugins[4]=git:3.9.0 \
                --set Master.InstallPlugins[5]=maven-plugin:2.7.1 \
                --set Agent.Image=cloudbees/jnlp-slave-with-java-build-tools --set Agent.ImageTag=2.2.0 --set Agent.Memory=2048Mi \
                -f jenkins-values.yml \
                stable/jenkins

#--set Master.InstallPlugins[5]=maven-plugin:2.7.1\
#                --set Master.InstallPlugins[4]=git:3.8.0 \

#                --set Persistence.volumes[0].name=jenkins-host-home \
#                --set Persistence.volumes[0].type=HostPath \
#                --set Persistence.volumes[0].hostPath=\/host-home \


#                --set Persistence.volumes[0].hostPath=\/host-home \
#                --set Persistence.volumes[0].type=HostPath,Persistence.volumes[0].hostPath=/host-home,Persistence.volumes[0].mountPath=/host-home \

#./stop.sh
#./start.sh