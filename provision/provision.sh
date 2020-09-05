#!/bin/sh

set -x -e

sudo apt update
sudo apt install -y mc apache2 curl mysql-server php7.4 libapache2-mod-php7.4 php7.4-mysql openjdk-8-jdk php7.4-zip php7.4-mbstring php7.4-xml php7.4-curl
sudo snap install netbeans --classic
sudo curl -s https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
sudo chmod 777 /usr/local/bin/composer
sudo chmod 777 /var/www/html
sudo rm -rfv /var/www/html/*
cd /var/www/html
composer require codeception/codeception --dev
sudo chmod -R 777 /var/www/html
yes | php vendor/bin/codecept bootstrap 
sudo chmod -R 777 /var/www/html
wget https://codeception.com/codecept.phar
composer require --dev codeception/module-webdriver
cd /home/vagrant
wget https://github.com/mozilla/geckodriver/releases/download/v0.26.0/geckodriver-v0.26.0-linux64.tar.gz
tar -xvzf geckodriver*
sudo chmod +x geckodriver
sudo mv geckodriver /usr/local/bin/
wget https://selenium-release.storage.googleapis.com/3.141/selenium-server-standalone-3.141.59.jar --directory-prefix=/home/vagrant
nohup java -jar /home/vagrant/selenium-server-standalone-3.141.59.jar </dev/null >/dev/null 2>&1 &
