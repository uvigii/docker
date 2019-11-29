FROM ubuntu:latest as base
#
LABEL MAINTAINER="Milan Enev <milan@mreji.net>"
#
ADD ./files /tmp/
RUN /bin/bash /tmp/install_packages.sh     && \    
    /bin/bash /tmp/install_composer.sh     && \
    /bin/bash /tmp/configure_packages.sh   && \
    /bin/bash /tmp/cleanup.sh
#
#ADD ./app/  /var/www/symfony/
#RUN chown -R www-data:www-data /var/www/symfony/
USER www-data
#
STOPSIGNAL SIGQUIT
CMD ["/tmp/start.sh"]
WORKDIR /var/www/symfony
EXPOSE 8080

 

