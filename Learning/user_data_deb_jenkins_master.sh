#!/bin/bash

# Install Jenkins & update
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb https://pkg.jenkins.io/debian binary/ > \
    /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update -y && sudo add-apt-repository universe && apt upgrade -y
sudo apt-get install -y jenkins openjdk-11-jdk vim mc htop
