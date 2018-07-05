#!/bin/bash


jenkinsStatus = `ps -elf | grep jenkins.war`

if [ "$jenkinsStatus" == "" ]
then
    /var/jenkins_home/wait-until-docker-running.sh
fi