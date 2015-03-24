#!/bin/bash

DEVNAME=$1
DEVICE_UUID=$2
SLOT_NUM=$3
DISK=`/sbin/blkid -o device -t UUID_SUB=$DEVICE_UUID`
if [ -n "$DISK" ]
then
/sbin/mdadm --manage $DEVNAME --cluster-confirm $SLOT_NUM:$DISK
fi
