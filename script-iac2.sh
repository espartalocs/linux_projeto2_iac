#!/bin/bash

echo "Atualizado o servidor"
apt-get update 
apt-get upgrade -y 
apt-get install apache2 -y 
apt-get install unzip -y
echo "Baixando e atualizado os arquivos do servidor"
cd /tmp
wget https://github.com/danilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/