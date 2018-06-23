#Minikube Easy

Minikube is a collection of bash scripts and templates that make installation of minikube and corresponding development pods easy. 

Minikube is a great initiative for running kubernetes locally presumably for developing locally. While kubernetes and minikube are under constant development this project aims to ensure a stable development environment using minikube.

The scripts provided are confirmed to work on macOS High Sierra Version 10.13.5.

## Preparing for installations

Follow these steps to use any portion of Minikube Easy:

Clone the https://github.com/kevinstl/minikube-easy.git project. 

`git clone https://github.com/kevinstl/minikube-easy.git`

Change to minikube-easy/scripts directory.

`cd minikube-easy/scripts`


## Installing Minikube Instance Alone

The install.sh script will strictly install what is required to run only minikube.

Execute install.sh - This installs everything needed to run minikube on your machine. It installs kubectl, hyperkit and minikube.

`./install.sh`


## Install Cockpit.

[Cockpit](https://cockpit-project.org/) provides a rich graphical interface to kubernetes including a topology view of resources and direct shell access to containers running in kubernetes.

Execute cockpit-install.sh - This will install cockpit. 

`./cockpit-install.sh`

Once installed you will need to use the start-with-cockpit.sh script to start minikube.  The start-with-cockpit.sh script starts minikube with basic authentication support so that you may log into cockpit.

`./start-with-cockpit.sh`


## Install Docker Registry.

`./registry-install.sh`

Add insecure registry address to docker:

<img src="docker-insecure-registry.png" width="400"/>

SSH into vm for further customization

`minikube ssh`




