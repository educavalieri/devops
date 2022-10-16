#!/usr/bin/env bash
echo "installing Apache and Setting it up ..."
apt-get update
apt-get install Apache2 
mkdir /var/www/html/
cp -r /vagrant/html/* /var/www/html/
service Apache start