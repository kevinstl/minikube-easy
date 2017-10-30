# minikube-easy
Scripts to make installation of minikube and corresponding development pods easy.


##Installing Minikube Instance


Clone the https://github.com/kevinstl/minikube-easy.git project. 

`git clone https://github.com/kevinstl/minikube-easy.git`

Change to minikube-easy/scripts directory.

`cd minikube-easy/scripts`


Execute install.sh - This installs everything needed to run minikube on your machine. It installs kubectl, xhyve and minikube.

`./install.sh`

Execute start.sh - This will start a minikube instance that will require further setup, described as follows.

`./start.sh`


##Modify xhyve vm.

Execute setup-minikube-vm-1.sh - This creates a configuration directory on the vm.

`./cockpit-install.sh`


SSH into vm for further customization

`minikube ssh`



####While logged into minikube vm execute the following:

sudo su -

Setup users.

`echo "changeme,kube,1" > /var/lib/localkube/config/static-users.csv`

