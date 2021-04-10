#!/bin/bash
# Bring up a virtual can bus device

if [ "$1" != "" ]; then
    IFACE=$1
else
    IFACE="vcan0"
fi

modprobe can
modprobe can_raw
modprobe can_bcm
modprobe vcan

ip link add dev $IFACE type vcan
ip link set up $IFACE

ifconfig $IFACE up
