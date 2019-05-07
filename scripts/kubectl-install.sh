#!/bin/bash

#Latest
#curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/darwin/amd64/kubectl && chmod +x kubectl && sudo mv kubectl /usr/local/bin/

#curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.8.0/bin/darwin/amd64/kubectl && chmod +x kubectl && sudo mv kubectl /usr/local/bin/

#curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.9.6/bin/darwin/amd64/kubectl && chmod +x kubectl && sudo mv kubectl /usr/local/bin/

#curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.9.9/bin/darwin/amd64/kubectl && chmod +x kubectl && sudo mv kubectl /usr/local/bin/

# 4-30-2019 This was working before change to v1.12.8 to fix jx issue
#curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.10.0/bin/darwin/amd64/kubectl && chmod +x kubectl && sudo mv kubectl /usr/local/bin/

#curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.10.12/bin/darwin/amd64/kubectl && chmod +x kubectl && sudo mv kubectl /usr/local/bin/

#v1.11.3 worked with minikube v0.28.2 5-7-2019
#curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.11.3/bin/darwin/amd64/kubectl && chmod +x kubectl && sudo mv kubectl ~/installs/google-cloud-sdk/bin/

curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.11.10/bin/darwin/amd64/kubectl && chmod +x kubectl && sudo mv kubectl ~/installs/google-cloud-sdk/bin/




# 4-30-2019
#Client Version: version.Info{Major:"1", Minor:"9", GitVersion:"v1.9.7", GitCommit:"dd5e1a2978fd0b97d9b78e1564398aeea7e7fe92", GitTreeState:"clean", BuildDate:"2018-04-19T00:05:56Z", GoVersion:"go1.9.3", Compiler:"gc", Platform:"darwin/amd64"}
#Server Version: version.Info{Major:"1", Minor:"10", GitVersion:"v1.10.0", GitCommit:"fc32d2f3698e36b93322a3465f63a14e9f0eaead", GitTreeState:"clean", BuildDate:"2018-03-26T16:44:10Z", GoVersion:"go1.9.3", Compiler:"gc", Platform:"linux/amd64"}
#Kevins-MBP:scripts kevin$ which kubectl
#/Users/kevin/installs/google-cloud-sdk/bin/kubectl
