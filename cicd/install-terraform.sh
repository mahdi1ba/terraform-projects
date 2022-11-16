#!/bin/bash

# fail on any error
set -eu
su -
# install yum-config-manager to manage your repositories
sudo yum list updates -d3
sudo yum update -y
sudo yum install -y yum-utils

# use yum-config-manager to add the official HashiCorp Linux repository
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo

# install terraform
sudo yum -y install terraform

# verify terraform is installed
terraform --version
