#!/bin/bash
echo "Cleaning Temp dir ..."
shopt -s extglob
cd /tmp
rm -fv !("start.sh")
#
apt-get -y autoremove	 && \
apt-get clean		 	 && \
apt-get autoclean		 && \
rm -rf /var/lib/apt/lists/*	|| exit