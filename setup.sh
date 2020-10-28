#!/bin/bash
sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common curl -fsSL https://yum.dockerproject.org/gpg | sudo apt-key add
sudo add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable" \
sudo apt-get update
sudo apt-cache policy docker-ce
sudo apt install docker-ce
sudo curl -L https://github.com/docker/compose/releases/download/1.27.4/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose #ensure using 1.27.4 latest verison
sudo chmod +x /usr/local/bin/docker-compose
docker volume create mui_mount #docker volume create muis_mount 
#docker login to secondspace but currently all repo are public 
docker volume create mui_sql
docker-compose up #build management ui
