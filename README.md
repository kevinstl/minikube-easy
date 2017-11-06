# minikube-easy
Scripts to make installation of minikube and corresponding development pods easy.


## Installing Minikube Instance


Clone the https://github.com/kevinstl/minikube-easy.git project. 

`git clone https://github.com/kevinstl/minikube-easy.git`

Change to minikube-easy/scripts directory.

`cd minikube-easy/scripts`


Execute install.sh - This installs everything needed to run minikube on your machine. It installs kubectl, xhyve and minikube.

`./install.sh`


## Install Cockpit.

`./cockpit-install.sh`


## Install Docker Registry.

`./registry-install.sh`

Add insecure registry address to docker:

<img src="docker-insecure-registry.png" width="400"/>

SSH into vm for further customization

`minikube ssh`




