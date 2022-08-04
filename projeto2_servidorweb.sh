#!/bin/bash

echo "Atualizando o Servidor..."
apt-get update && apt-get upgrade -y
echo "Instalando o apache2..."
apt-get install apache2 -y
echo "Instalando o unzip..."
apt-get install unzip -y
echo "baixando aplicação..."
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip -O /tmp/main.zip
echo "descompactando e copiando o arquivo...."
cd /tmp 
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/ 
echo "FIM ..."
