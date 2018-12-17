FROM ubuntu:latest
#FROM php:7.2-fpm-stretch
#
MAINTAINER Milan Enev <milan@mreji.net>
ENV WORKDIR "/var/www/project"
ADD ./scripts/install_packages.sh /tmp
RUN /bin/bash /tmp/install_packages.sh

WORKDIR ${WORKDIR}

#EXPOSE 9000

CMD ["bash"]
