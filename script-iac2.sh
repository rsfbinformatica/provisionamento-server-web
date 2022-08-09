#!/bin/bash

echo "Atualização do servidor"
apt-get update -y
apt-get upgrade -y

echo "Instalando Serviços"
apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando e copiando os arquivos da aplicação"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.ziphttps://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
 unzip main.zip 

cd linux-site-dio-main
cp -R * /var/www/html/

