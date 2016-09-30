#!/usr/bin/env bash

git clone https://github.com/robert0714/books-ms-centos.git

set -e

cd books-ms-centos

docker pull vfarcic/books-ms

docker tag vfarcic/books-ms 192.168.57.27:5000/books-ms-centos

docker push 192.168.57.27:5000/books-ms

docker pull mongo

docker pull jenkins

yum install -y openjdk-7-jdk
