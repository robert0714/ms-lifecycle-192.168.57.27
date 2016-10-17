#!/bin/bash

set -e

echo "Setting Gateway on Ubuntu..."

sudo route add default gw 192.168.57.1  eth1
