#!/bin/bash


./initialize.sh


kubectl --namespace dev-services delete -f kubernetes-cockpit.json-fixed


#./stop.sh