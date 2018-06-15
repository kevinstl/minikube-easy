#!/bin/bash


credentialsXml=$1
#credentialsXml=`cat $1 | base64`

#echo "encrypted credentialsXml: $credentialsXml"

#cat ./templates/jenkins-credentials-secrets.yml | sed "s/\X_CREDENTIALS_XML_X/$credentialsXml/" | kubectl --namespace continuous-integration create -f -


kubectl --namespace continuous-integration create secret generic jenkins-credentials --from-file=$credentialsXml


