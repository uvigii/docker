#!/bin/bash
ln -snf /usr/share/zoneinfo/UTC /etc/localtime || exit
echo "UTC" > /etc/timezone || exit
echo "date.timezone = UTC" >> /etc/php/7.2/cli/conf.d/php.ini || exit
echo "date.timezone = UTC" >> /etc/php/7.2/fpm/conf.d/php.ini || exit	
cp -f /tmp/php-fpm.conf /etc/php/7.2/fpm/					  || exit
cp -f /tmp/php-fpm.www.conf 	/etc/php/7.2/fpm/pool.d/www.conf	  || exit
touch /etc/php/7.2/fpm/99-xdebug.ini                           
chmod o+w /etc/php/7.2/fpm/99-xdebug.ini
#
mkdir -p /var/www/symfony
chown www-data:www-data /var/www/symfony
#   Nginx
cp -f /tmp/nginx.default.conf /etc/nginx/sites-available/default
cp -f /tmp/nginx.conf /etc/nginx/
#
chmod +x /tmp/start.sh || exit
chown www-data:www-data /tmp/start.sh || exit

