#! /bin/bash

echo "#####################################################"
echo "        ***    Atualizando o servidor... ***         "
echo "#####################################################"
apt-get update
apt-get upgrade -y
apt-get install apace2 -y
echo " "

echo "####################################################"
echo "*** Bixando e copiando os arquivos da aplicacao ***"
echo "####################################################"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/
