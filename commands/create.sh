#!/bin/sh

DRIVERCOMMAND=`echo $DRIVER | tr '[:upper:]' '[:lower:]'`

source /commands/create/$DRIVERCOMMAND.sh
