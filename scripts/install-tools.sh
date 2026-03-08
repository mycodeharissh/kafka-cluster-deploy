#!/bin/bash

echo "Installing Terraform"

sudo apt-get update
sudo apt-get install -y unzip

wget https://releases.hashicorp.com/terraform/1.7.5/terraform_1.7.5_linux_amd64.zip
unzip terraform_1.7.5_linux_amd64.zip
sudo mv terraform /usr/local/bin/

echo "Installing Helm"

curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash