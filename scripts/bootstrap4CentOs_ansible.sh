#!/bin/bash

set -e

echo "Installing Ansible  on CentOS..." 

 yum install -y git
 git clone git://github.com/ansible/ansible.git --recursive
 cd ./ansible
 make rpm
 sudo rpm -Uvh ./rpm-build/ansible-*.noarch.rpm

yum  install -y ansible
yum  install -y jq
 

cp /vagrant/ansible/ansible.cfg /etc/ansible/ansible.cfg
 
