#!/bin/bash

if [ "$DEBUG" == "1" ]; then
  set -x
fi


if [[ $1 == "-d" ]]; then
  while true; do sleep 1000; done
fi