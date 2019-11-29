#!/bin/bash
export DEBIAN_FRONTEND=noninteractive
apt-get update  -yq	|| exit
apt-get install -yq --no-install-recommends apt-utils || exit
apt-get dist-upgrade -yq || exit
apt-get install -yq --no-install-recommends locales || exit
locale-gen en_US.UTF-8 en_GB.UTF-8 de_DE.UTF-8 es_ES.UTF-8 fr_FR.UTF-8 it_IT.UTF-8 bg_BG.UTF-8 || exit
apt-get install -yq --no-install-recommends tzdata || exit
apt-get install -yq --no-install-recommends git curl zlib1g-dev unzip openssh-client ca-certificates || exit
apt-get install -yq --no-install-recommends \
			nginx	\
			php-cli \
			php-pdo php-mysql php-mysqli php-sqlite3 php-pgsql php-mongodb \
			php-curl php-zip php-bcmath php-bz2 php-gd php-intl php-imagick php-mbstring \
			php-xml  php-json php-xsl php-dom \
			php-ldap php-soap php-xmlrpc php-xmlwriter php-phar \
			php-imap php-bcmath php-bz2 \
			php-ctype php-iconv php-fileinfo php-tokenizer \
			php-apcu php-memcached php-redis php-fpm php-opcache \
			php-xdebug || exit
