#!/usr/bin/env bash

set -e

docker pull mongo

docker pull nginx

docker pull 192.168.57.27:5000/books-ms-centos

docker pull gliderlabs/registrator:v6
