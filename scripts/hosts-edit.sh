#!/bin/bash

domainName=$1
ip=$2
file=$3
newEntry="$ip   $domainName"

echo "adding minikube-eash to hosts file"

grep -q $domainName $file && sed -i '' "s/.*$domainName.*/$newEntry/" $file || echo $newEntry >> $file

echo "added minikube-eash to hosts file"

cat $file
