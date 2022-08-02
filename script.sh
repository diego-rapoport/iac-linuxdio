#!/bin/bash

echo "Atualizando sistema..."
apt-get update && apt-get upgrade -y

echo "Instalando aplicações necessárias..."
apt-get install unzip apache2 -y

echo "Instalando aplicação..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html


