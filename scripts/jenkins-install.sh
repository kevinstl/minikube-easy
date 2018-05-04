#!/bin/bash

status=`minikube status | grep minikube: | awk '{print $2}'`
echo minikube is $status
if [ "$status" != "Running" ]
then
    ./initialize.sh
fi

#Borrowed from https://github.com/kenzanlabs/kubernetes-ci-cd
#kubectl apply -f jenkins.yml;

#kubectl apply -f jenkins-persistent-volume.yml;
#kubectl apply -f jenkins-persistent-volume-claim.yml;

helm init

#helm install --name jenkins --set Persistence.ExistingClaim=jenkins-host-home --set Master.NodePort=30010 stable/jenkins
#helm install --name jenkins --set Persistence.ExistingClaim=jenkins --set Master.NodePort=30010 --set Master.RunAsUser=501 --set Master.FsGroup=501 stable/jenkins
#helm install --name jenkins --set Master.NodePort=30010 --set Master.RunAsUser=501 --set Master.FsGroup=501 stable/jenkins
#helm install --name jenkins --set Master.NodePort=30010 stable/jenkins
#helm install --name jenkins --set Persistence.volumes=jenkins-host-home --set Master.NodePort=30010 stable/jenkins
#helm install --name jenkins --set Master.NodePort=30010 --set Master.RunAsUser=501 --set Master.FsGroup=501 stable/jenkins

#helm install --name jenkins --set Master.Image=jenkins/jenkins --set Master.ImageTag=lts --set Master.HealthProbesTimeout=600 --set Master.HealthProbeLivenessFailureThreshold=500 --set Persistence.ExistingClaim=jenkins-host-home --set Master.ServiceType=NodePort --set Master.NodePort=30010 stable/jenkins
#helm install --name jenkins --set Persistence.ExistingClaim=jenkins-host-home --set Master.ServiceType=NodePort --set Master.NodePort=30010 stable/jenkins



#helm install --name jenkins --set Master.ServiceType=NodePort --set Master.NodePort=30010 --set Master.UseSecurity=false --set Master.InstallPlugins={kubernetes=1.1, workflow-aggregator=2.5, workflow-job=2.15, credentials-binding=1.13, git=3.6.4} stable/jenkins
#helm install --name jenkins --set Master.ServiceType=NodePort --set Master.NodePort=30010 --set Master.UseSecurity=false --set Master.InstallPlugins[0].kubernetes=1.1 --set Master.InstallPlugins[0].workflow-aggregator=2.5 --set Master.InstallPlugins[0].workflow-job=2.15 stable/jenkins
#helm install --name jenkins --set Master.ServiceType=NodePort --set Master.NodePort=30010 --set Master.UseSecurity=false --set Master[0].InstallPlugins[0].kubernetes=1.1,Master[0].InstallPlugins[0].workflow-aggregator=2.5,Master[0].InstallPlugins[0].workflow-job=2.15,Master[0].InstallPlugins[0].credentials-binding=1.13,Master[0].InstallPlugins[0].git=3.6.4 stable/jenkins
#helm install --name jenkins --set Master.ServiceType=NodePort --set Master.NodePort=30010 --set Master.UseSecurity=false --set Master.InstallPlugins={kubernetes:1\.1, workflow\-aggregator:2\.5, workflow\-job:2\.15, credentials\-binding:1\.13, git:3\.6\.4} stable/jenkins
#helm install --name jenkins --set Master.ServiceType=NodePort --set Master.NodePort=30010 --set Master.UseSecurity=false --set Master.InstallPlugins[0]=kubernetes:1.1 --set Master.InstallPlugins[1]=workflow-aggregator:2.5 --set Master.InstallPlugins[2]=workflow-job:2.15 --set Master.InstallPlugins[3]=credentials-binding:1.13 --set Master.InstallPlugins[4]=git:3.6.4 stable/jenkins
#helm install --name jenkins --set Master.ServiceType=NodePort --set Master.NodePort=30010 --set Master.UseSecurity=false --set Master.InstallPlugins[0]=kubernetes:1.6.0 --set Master.InstallPlugins[1]=workflow-aggregator:2.5 --set Master.InstallPlugins[2]=workflow-job:2.15 --set Master.InstallPlugins[3]=credentials-binding:1.13 --set Master.InstallPlugins[4]=git:3.6.4 stable/jenkins
helm install --name jenkins --set Master.ServiceType=NodePort --set Master.NodePort=30010 --set Master.UseSecurity=false --set Master.InstallPlugins[0]=kubernetes:1.6.0 --set Master.InstallPlugins[1]=workflow-aggregator:2.5 --set Master.InstallPlugins[2]=workflow-job:2.20 --set Master.InstallPlugins[3]=credentials-binding:1.16 --set Master.InstallPlugins[4]=git:3.8.0 stable/jenkins

#./stop.sh
#./start.sh
