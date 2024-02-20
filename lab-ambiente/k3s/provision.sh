#!/bin/bash

echo "Instalando K3s"
curl -sfL https://get.k3s.io | sh -s - --Cluster-init --tls-san 192.168.1.5 --node-ip 192.168.1.5 --node-external-ip 192.168.1.5
