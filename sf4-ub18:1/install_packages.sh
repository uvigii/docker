#!/bin/bash
export DEBIAN_FRONTEND=noninteractive
apt-get update  -yq
apt-get install -yq --no-install-recommends apt-utils
apt-get dist-upgrade -yq
apt-get install -yq --no-install-recommends locales
locale-gen en_US.UTF-8 en_GB.UTF-8 de_DE.UTF-8 es_ES.UTF-8 fr_FR.UTF-8 it_IT.UTF-8 km_KH sv_SE.UTF-8 fi_FI.UTF-8
apt-get install -yq --no-install-recommends tzdata
apt-get install -yq --no-install-recommends git curl zlib1g-dev unzip openssh-client ca-certificates
apt-get install -y  --no-install-recommends php-cli php-mbstring php-fpm php-mysql php-mysqli php-pgsql php-curl php-xml php-zip php-json php-gd php-ldap php-soap php-sqlite3 php-intl php-imagick 
#
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
#composer create-project symfony/website-skeleton my-project
#
