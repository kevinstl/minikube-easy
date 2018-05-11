#!/bin/bash

domainName=$1
ip=$2
file=$3
newEntry="$ip   $domainName"

grep -q $domainName $file && sed -i '' "s/.*$domainName.*/$newEntry/" $file || echo $newEntry >> $file

cat $file
