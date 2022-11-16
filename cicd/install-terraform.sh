#!/bin/bash

# fail on any error
#set -eu

# install yum-config-manager to manage your repositories
yum install -y sudo
#yum -y remove yum-plugin-priorities

#sudo yum install -y yum-utils
# use yum-config-manager to add the official HashiCorp Linux repository
#sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo

# install terraform
#sudo yum -y install terraform

# verify terraform is installed
#
sudo yum install wget unzip -y
sudo yum update -y
sudo wget https://releases.hashicorp.com/terraform/0.12.17/terraform_0.12.17_linux_amd64.zip
sudo unzip terraform_0.12.17_linux_amd64.zip -d /usr/local/bin/
terraform --version
