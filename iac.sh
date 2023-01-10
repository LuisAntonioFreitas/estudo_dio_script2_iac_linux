#!/bin/bash

echo "Atualizando o servidor..."

apt-get update
apt-get upgrade -y

echo "Instalando softwares necessarios no servidor..."

apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando e copiando os arquivos da aplicacao..."

cd /tmp
wget https://github.com/LuisAntonioFreitas/estudo_dio_script2_iac_linux/linux-site-dio-main.zip
unzip linux-site-dio-main.zip
cd linux-site-dio-main
cp -R * /var/www/html/