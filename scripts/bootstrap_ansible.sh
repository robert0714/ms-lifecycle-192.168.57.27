#!/bin/bash

#set -e

echo "Updating Ubuntu ..."
apt-get update -y

echo "Installing Repository..."
apt-get install -y software-properties-common
apt-add-repository ppa:ansible/ansible

echo "Installing Ansible..."
apt-get install -y   ansible

echo "Copying Ansible Configuration..."
cp /vagrant/ansible/ansible.cfg /etc/ansible/ansible.cfg

echo "Installing Git..."
apt-get install -y git

#apt-get update -y
#apt-get install -y python-pip python-dev
#pip install ansible==1.9.2
#mkdir -p /etc/ansible
#touch /etc/ansible/hosts
#cp /vagrant/ansible/ansible.cfg /etc/ansible/ansible.cfg
#mkdir -p /etc/ansible/callback_plugins/
#cp /vagrant/ansible/plugins/human_log.py /etc/ansible/callback_plugins/human_log.py
