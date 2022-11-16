#!/bin/bash

# fail on any error
set -eu
sudo -iE
# install yum-config-manager to manage your repositories
yum list updates -d3
yum update -y
yum install -y yum-utils

# use yum-config-manager to add the official HashiCorp Linux repository
yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo

# install terraform
yum -y install terraform

# verify terraform is installed
terraform --version
