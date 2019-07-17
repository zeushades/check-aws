#!/bin/bash
cd /var/www/html
yum install epel-release -y
yum install wget htop nano curl nmap net-tools telnet -y
curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer
wget https://getcomposer.org/composer.phar
php composer.phar install
