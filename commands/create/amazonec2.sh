#!/bin/sh

echo "Creating docker machine on AWS EC2"

/usr/local/bin/docker-machine create --driver=$DRIVER $VMNAME
