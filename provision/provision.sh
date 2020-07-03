#!/bin/sh

set -x

sudo apt update
sudo apt install -y mc apache2 curl mysql-server php libapache2-mod-php php-mysql openjdk-8-jdk php7.4-zip php7.4-mbstring php7.4-xml php7.4-curl
sudo snap install netbeans --classic
sudo curl -s https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
cd /var/www
sudo chmod 777 /var/www/html
cd /var/www/html
sudo chmod 777 /usr/local/bin/composer
composer require codeception/codeception --dev
composer update
echo -e "y\n" | php vendor/bin/codecept bootstrap
composer require --dev codeception/module-webdriver
cd ~
wget https://github.com/mozilla/geckodriver/releases/download/v0.26.0/geckodriver-v0.26.0-linux64.tar.gz
tar -xvzf geckodriver*
sudo chmod +x geckodriver
sudo mv geckodriver /usr/local/bin/
wget https://selenium-release.storage.googleapis.com/3.141/selenium-server-standalone-3.141.59.jar
#java -jar selenium-server-standalone-3.141.59.jar
