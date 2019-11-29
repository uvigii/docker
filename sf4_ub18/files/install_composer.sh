#!/bin/bash
echo "$(curl -sS https://composer.github.io/installer.sig) -" > composer-setup.php.sig \
&& curl -sS https://getcomposer.org/installer | tee composer-setup.php | sha384sum -c composer-setup.php.sig \
&& php composer-setup.php && rm composer-setup.php* \
&& chmod +x composer.phar && mv composer.phar /usr/bin/composer || exit
