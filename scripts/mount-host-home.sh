#!/bin/bash

echo "mounting host-home"

nohup minikube mount ~:/host-home &
#nohup minikube mount --9p-version=9p2000.L ~:/host-home --uid 0 --gid 0 &

echo "mounted host-home"