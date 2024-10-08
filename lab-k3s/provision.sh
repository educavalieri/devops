#!/bin/bash

echo "Atualizando máquina virtual"
echo "----------------------------------------------"
sudo apt-get update
sudo apt-get upgrade -y

echo "Instalando docker"
echo "----------------------------------------------"
sudo apt-get install curl
sudo curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo apt-get install docker-compose -y
sudo systemctl start docker

echo "Instalando Java"
echo "----------------------------------------------"
sudo apt-get install fontconfig openjdk-17-jre -y

echo "Instalando nginx"
echo "----------------------------------------------"
sudo apt-get install nginx -y

echo "Instalando Jenkins"
echo "----------------------------------------------"
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install jenkins -y
sudo usermod -a -G docker jenkins

echo "Instalando K3s"
#curl -sfL https://get.k3s.io | sh -s - --Cluster-init --tls-san 192.168.1.2 --node-ip 192.168.1.2 --node-external-ip 192.168.1.2
curl -sfL https://get.k3s.io | sh -