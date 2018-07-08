#!/bin/bash

echo "mounting host-home"

nohup minikube mount ~:/host-home &

echo "mounted host-home"