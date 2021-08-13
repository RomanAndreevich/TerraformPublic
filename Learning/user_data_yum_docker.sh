#!/bin/bash

# Update system & install tools
sudo -i
yum makecache && yum update -y
yum install -y docker
usermod -aG docker ec2-user
systemctl enable --now docker
