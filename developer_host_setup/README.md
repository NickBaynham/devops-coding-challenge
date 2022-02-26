# Developer Host Setup

You can execute all troubleshooting and automation from a cloud based development instance. To configure the instance do
the following:

1. Create a development instance. Recommended:

- Cloud Platform: AWS
- Operating System: Amazon Linux 2 x86
- Instance Type: t2.micro
- Tags: project = <project name>

2. Connect to the instance:

```
ssh -i "<location of your private key>" ec2-user@<instance name>
```

3. Update all installed packages to their latest versions:

```
sudo yum update -y
```

4. Install Google Cloud SDK
```
$ sudo tee -a /etc/yum.repos.d/google-cloud-sdk.repo <<EOM
[google-cloud-sdk]

name=Google Cloud SDK

baseurl=https://packages.cloud.google.com/yum/repos/cloud-sdk-el7-x86_64

enabled=1

gpgcheck=1

repo_gpgcheck=1

gpgkey=https://packages.cloud.google.com/yum/doc/yum-key.gpg

       https://packages.cloud.google.com/yum/doc/rpm-package-key.gpg

EOM


$ sudo yum install -y google-cloud-sdk

$ sudo gcloud init
```

You will then be able to authenticate to GCP using your google registered email. 