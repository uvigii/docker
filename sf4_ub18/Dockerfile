FROM ubuntu:latest
#FROM php:7.2-fpm-stretch
#
MAINTAINER Milan Enev <milan@mreji.net>
#ENV WORKDIR "/var/www/project"
ADD install_packages.sh /root/
RUN /bin/bash /root/install_packages.sh

WORKDIR ${WORKDIR}

#EXPOSE 9000

CMD ["bash"]
