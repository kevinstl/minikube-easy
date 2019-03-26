#!/bin/bash

domainName=$1
ip=$2
file=$3
newEntry="$ip   $domainName"

echo "adding minikube-easy to hosts file"

grep -q $domainName $file && sed -i '' "s/.*$domainName.*/$newEntry/" $file || echo $newEntry >> $file

echo "added minikube-easy to hosts file"

cat $file
