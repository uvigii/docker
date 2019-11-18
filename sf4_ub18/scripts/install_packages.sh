#!/bin/bash
export DEBIAN_FRONTEND=noninteractive
apt-get update  -yq
apt-get install -yq --no-install-recommends apt-utils
apt-get dist-upgrade -yq
apt-get install -yq --no-install-recommends locales
locale-gen en_US.UTF-8 en_GB.UTF-8 de_DE.UTF-8 es_ES.UTF-8 fr_FR.UTF-8 it_IT.UTF-8 bg_BG.UTF-8
apt-get install -yq --no-install-recommends tzdata
apt-get install -yq --no-install-recommends git curl zlib1g-dev unzip openssh-client ca-certificates
apt-get install -yq --no-install-recommends \
			php-cli \
			php-pdo php-mysql php-mysqli php-sqlite3 php-pgsql php-mongodb \
			php-curl php-zip php-bcmath php-bz2 php-gd php-intl php-imagick php-mbstring \
			php-xml  php-json php-xsl php-dom \
			php-ldap php-soap php-xmlrpc php-xmlwriter php-phar \
			php-imap php-bcmath php-bz2 \
			php-ctype php-iconv php-fileinfo php-tokenizer \
			php-apcu php-memcached php-redis php-fpm php-opcache \
			php-xdebug
#
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
#
cp /tmp/symfony.ini 		/etc/php/7.2/cli/conf.d/
cp /tmp/symfony.ini 		/etc/php/7.2/fpm/conf.d/
cp /tmp/xdebug.ini  		/etc/php/7.2/fpm/conf.d/
cp /tmp/symfony.pool.conf 	/etc/php/7.2/fpm/pool.d/
#
apt-get clean
rm -rf /var/lib/apt/lists/*
