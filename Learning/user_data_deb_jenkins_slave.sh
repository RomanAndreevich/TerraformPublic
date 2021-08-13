#!/bin/bash

# Update & upgrade server
sudo apt-get update -y && apt upgrade -y
sudo apt-get install -y openjdk-11-jdk vim mc htop
