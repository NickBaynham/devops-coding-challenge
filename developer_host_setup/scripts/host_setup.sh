#!/bin/bash

# Update Packages to the Latest Versions

sudo yum update -y

# Install kubectl

curl -o kubectl https://amazon-eks.s3.us-west-2.amazonaws.com/1.21.2/2021-07-05/bin/linux/amd64/kubectl
chmod +x ./kubectl
mkdir -p $HOME/bin && cp ./kubectl $HOME/bin/kubectl && export PATH=$PATH:$HOME/bin
echo 'export PATH=$PATH:$HOME/bin' >> ~/.bashrc
kubectl version --short --client

# Configure kubectl for your gcp cluster

sudo tee -a /etc/yum.repos.d/google-cloud-sdk.repo <<EOM
[google-cloud-sdk]

name=Google Cloud SDK

baseurl=https://packages.cloud.google.com/yum/repos/cloud-sdk-el7-x86_64

enabled=1

gpgcheck=1

repo_gpgcheck=1

gpgkey=https://packages.cloud.google.com/yum/doc/yum-key.gpg

       https://packages.cloud.google.com/yum/doc/rpm-package-key.gpg

EOM

sudo yum install -y google-cloud-sdk

echo 'Please run the command: sudo gcloud init and auth using your gmail account.'
echo 'Then run: gcloud container clusters get-credentials cluster-1 to set up kubectl'
