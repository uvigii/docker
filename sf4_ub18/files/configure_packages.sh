#!/bin/bash
ln -snf /usr/share/zoneinfo/UTC /etc/localtime || exit
echo "UTC" > /etc/timezone || exit
echo "date.timezone = UTC" >> /etc/php/7.2/cli/conf.d/php.ini || exit
echo "date.timezone = UTC" >> /etc/php/7.2/fpm/conf.d/php.ini || exit	
cp -f /tmp/php-fpm.conf /etc/php/7.2/fpm/					  || exit
cp -f /tmp/php-fpm.www.conf 	/etc/php/7.2/fpm/pool.d/www.conf	  || exit
touch /etc/php/7.2/fpm/99-xdebug.ini        || exit                          
chmod o+w /etc/php/7.2/fpm/99-xdebug.ini    || exit
#
mkdir -p /var/www/symfony                   || exit
chown www-data:www-data /var/www/symfony    || exit
#   Nginx
cp -f /tmp/nginx.default.conf /etc/nginx/sites-available/default || exit
cp -f /tmp/nginx.conf /etc/nginx/           || exit
#
chmod +x /tmp/start.sh                      || exit


