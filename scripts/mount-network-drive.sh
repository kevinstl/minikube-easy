#!/bin/bash

echo "mounting network-drive"

nohup minikube mount /Volumes/network-drive:/network-drive &

echo "mounted network-drive"