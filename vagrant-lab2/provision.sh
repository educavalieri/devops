#!/bin/bash
echo "installing Apache and Setting it up ..."
mkdir /var/www
mkdir /var/www/html
cp -r /vagrant/html/* /var/www/html/
sudo apt-get update -y
sudo apt-get install apache2 -y
sudo service apache2 start