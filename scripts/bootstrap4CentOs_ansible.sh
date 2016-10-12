#!/bin/bash

set -e

echo "Installing Ansible  on CentOS..."
#apt-get install -y software-properties-common
#apt-add-repository ppa:ansible/ansible
#apt-get update
#apt-get install -y --force-yes ansible
#cp /vagrant/ansible/ansible.cfg /etc/ansible/ansible.cfg

#wget http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-8.noarch.rpm
#rpm -ivh epel-release-7-8.noarch.rpm
#rm -rf epel-release-7-8.noarch.rpm

{ # try
    su -c 'rpm -Uvh http://download.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-8.noarch.rpm'
} 
yum -y install ansible
yum -y install jq
#yum -y update

#sudo tee /etc/yum.repos.d/docker.repo <<-'EOF'
#[dockerrepo]
#name=Docker Repository
#baseurl=https://yum.dockerproject.org/repo/main/centos/7/
#enabled=1
#gpgcheck=1
#gpgkey=https://yum.dockerproject.org/gpg
#EOF

#sudo yum  -y install docker-engine
#sudo chkconfig docker on
#sudo service docker start

cp /vagrant/ansible/ansible.cfg /etc/ansible/ansible.cfg





#apt-get update -y
#apt-get install -y python-pip python-dev
#pip install ansible==1.9.2
#mkdir -p /etc/ansible
#touch /etc/ansible/hosts
#cp /vagrant/ansible/ansible.cfg /etc/ansible/ansible.cfg
#mkdir -p /etc/ansible/callback_plugins/
#cp /vagrant/ansible/plugins/human_log.py /etc/ansible/callback_plugins/human_log.py
