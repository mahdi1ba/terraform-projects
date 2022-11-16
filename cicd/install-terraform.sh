#!/bin/bash

# fail on any error
set -eu

# install yum-config-manager to manage your repositories
yum install -y yum-utils
yum install -y sudo
su -
# use yum-config-manager to add the official HashiCorp Linux repository
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo

# install terraform
sudo yum -y install terraform

# verify terraform is installed
terraform --version
