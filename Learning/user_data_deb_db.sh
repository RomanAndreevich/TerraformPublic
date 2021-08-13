#!/bin/bash

# Update & upgrade server
apt update -y && apt upgrade -y

# Install default needed tools
apt install -y vim mc htop postgresql postgresql-contrib mariadb-server
