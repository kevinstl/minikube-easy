# Minikube Easy

[Minikube](https://github.com/kubernetes/minikube) is a collection of bash scripts and templates that make installation of minikube and corresponding development pods easy. 

Minikube is a great initiative for running [kubernetes](https://github.com/kubernetes/kubernetes) locally presumably for developing locally. While kubernetes and minikube are under constant development this project aims to ensure a stable development environment using minikube.

### Key Features

* Installation of minikube, [hyperkit](https://github.com/moby/hyperkit), [kubectl](https://kubernetes.io/docs/reference/kubectl/overview/) and development tools via one-line shell commands.
* Jenkins installation pre-configured with plugins required for builds and deployments using [Spring Cloud Pipelines](https://cloud.spring.io/spring-cloud-pipelines/).
* [Cockpit](https://cockpit-project.org/) installation to simplify interaction with kubernetes.
* Simple installation of [Artifactory](https://jfrog.com/artifactory/) to support most artifact repository requirements.
* One-line installation of all development tools required for local development and deployment into minikube.

The scripts provided are confirmed to work on **macOS** High Sierra Version 10.13.5.

### Preparing for installations

Follow these steps to use any portion of Minikube Easy:

Clone the https://github.com/kevinstl/minikube-easy.git project. 

`git clone https://github.com/kevinstl/minikube-easy.git`

Change to minikube-easy/scripts directory.

`cd minikube-easy/scripts`

### Install everything required for local development and deployments to minikube.

The local-development-install.sh script installs minikube, hyperkit, kubectl, jenkins, cockpit and artifactory.

`./local-development-install.sh`

### Installing Minikube Instance Alone

The install.sh script will strictly install what is required to run only minikube.

Execute install.sh - This installs everything needed to run minikube on your machine. It installs kubectl, hyperkit and minikube.

`./install.sh`


### Install Cockpit.

[Cockpit](https://cockpit-project.org/) provides a rich graphical interface to kubernetes including a topology view of resources and direct shell access to containers running in kubernetes.

Execute cockpit-install.sh - This will install cockpit. 

`./cockpit-install.sh`

Once installed you will need to use the start-with-cockpit.sh script to start minikube.  The start-with-cockpit.sh script starts minikube with basic authentication support so that you may log into cockpit.

`./start-with-cockpit.sh`


### Install Docker Registry.

`./registry-install.sh`

Add insecure registry address to docker:

<img src="docker-insecure-registry.png" width="400"/>

SSH into vm for further customization

`minikube ssh`




