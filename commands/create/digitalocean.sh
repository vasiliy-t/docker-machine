#!/bin/sh

echo "Creating docker machine on DigitalOcean"

/usr/local/bin/docker-machine create --driver=$DRIVER $VMNAME
