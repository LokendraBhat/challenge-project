#!/bin/bash

# Add Docker's official GPG key:
sudo apt-get update

sudo apt-get install -y ca-certificates curl gnupg

sudo install -y -m 0755 -d /etc/apt/keyrings

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Update package again
sudo apt-get update

# Installing docker package
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# To add current user into docker group
sudo usermod -aG docker $USER

# Verify docker running in our system
sudo docker run hello-world


# Reference: official docker documentation site https://docs.docker.com/engine/install/ubuntu/


