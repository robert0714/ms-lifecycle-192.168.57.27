#!/bin/bash

#set -e

echo "Installing Ansible  on CentOS..." 

A=`yum info ansible`

testing=`[[ $A =~ 'Ansible' ]]`

echo $testing

echo  "############# ${testing} ##############"
 
if [[ $testing != ""  ]]; then
     echo "Ansible is already installed."
else
      echo "Ansible is not installed."
      yum install -y wget
      wget http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-9.noarch.rpm
      rpm -ivh  epel-release-7-9.noarch.rpm
      rm -rf epel-release-7-9.noarch.rpm
      
fi

yum  install -y ansible
yum  install -y jq

cp /vagrant/ansible/ansible.cfg /etc/ansible/ansible.cfg

yum  install -y git

yum update -y
