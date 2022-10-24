#! /bin/bash
echo "atualizando sistema"

apt-get update 
apt-get upgrade -y

echo "instalando Apache2"

apt-get install apache2 -y

echo "instalando Unzip"

apt-get install unzip -y

echo "Baixando e copiando arquivos da aplicação"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/






