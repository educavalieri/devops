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
