#!/bin/bash
yum -y install yum-utils pygpgme curl gpg gcc gcc-c++ make patch autoconf automake bison libffi-devel libtool readline-devel sqlite-devel zlib-devel openssl-devel readline glibc-headers glibc-devel mariadb-devel zlib libyaml-devel bzip2 iconv-devel ImageMagick ImageMagick-devel openssl-devel
yum -y install http://rpms.remirepo.net/enterprise/remi-release-7.rpm
if ! [ -x "$(command -v nginx)" ]; then yum install -y nginx >&2;   exit 1; fi # install nginx if not already installed
if ! [ -x "$(command -v php)" ]; then yum install -y php-cli php-fpm php-mysql php-json php-opcache php-mbstring php-xml php-gd php-curl php-soap php-pear php-devel >&2;   exit 1; fi 
curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer
