#!/bin/bash

echo "mounting usb-btcd"

nohup minikube mount /Volumes/USB-BTCD:/usb-btcd &

echo "mounted usb-btcd"