#!/bin/bash
if [ -z ${APP_ENV+x} ]; then echo "No APP_ENV"; export APP_ENV="test"; fi 
#
echo "Env "$APP_ENV
if [ $APP_ENV = "dev" ]; then
    echo "."
    echo "zend_extension=xdebug.so"  >  /etc/php/7.2/fpm/99-xdebug.ini
    echo "[Xdebug]"                  >> /etc/php/7.2/fpm/99-xdebug.ini
    echo "xdebug.remote_enable=true" >> /etc/php/7.2/fpm/99-xdebug.ini
    echo "xdebug.remote_port=5902"   >> /etc/php/7.2/fpm/99-xdebug.ini
    echo "xdebug.remote_host=host.docker.internal"  >> /etc/php/7.2/fpm/99-xdebug.ini   
elif [ $APP_ENV = "test" ]; then
    echo "."
else
	echo "."
fi
#
echo "Starting Nginx ..."
/usr/sbin/nginx
echo "Starting FPM ..."
/usr/sbin/php-fpm7.2 -F
