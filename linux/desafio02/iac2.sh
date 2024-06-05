#!/bin/bash

echo "Atualizando servidor..."
apt update
apt upgrade -y

echo "Instalando o apache..."
apt install apache2 -y

echo "Instalando o unzip..."
apt install unzip -y

echo "Baixando aplicação..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/head>
unzip main.zip
cd linux-site-dio-main

cp -R * /var/www/html/