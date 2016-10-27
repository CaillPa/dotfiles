#!/bin/bash
LIGNE="$(lsusb|grep Kingston)"
echo $LIGNE
BUS=${LIGNE:4:3}
DEVICE=${LIGNE:15:3}
echo $BUS
echo $DEVICE
./usbreset /dev/bus/usb/$BUS/$DEVICE
exit 0;
