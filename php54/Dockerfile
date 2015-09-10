FROM phusion/baseimage
MAINTAINER Kaluzki Demjan <kaluzkidemjan@gmail.com>

CMD ["/sbin/my_init"]

RUN usermod -u 1000 www-data && groupmod -g 1000 www-data

ENV DEBIAN_FRONTEND noninteractive

RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623 && \
    echo "deb http://repos.zend.com/zend-server/7.0/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list && \
    apt-get update && \
    apt-get install -y zend-server-php-5.4 autoconf build-essential && \
    service zend-server stop && \
    /usr/local/zend/bin/pecl install xdebug && \
    chmod +x /usr/local/zend/lib/php_extensions/xdebug.so && \
    apt-get remove -y autoconf build-essential && \
    apt-get autoremove -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENV PATH "$PATH:/usr/local/zend/bin"

EXPOSE 80
EXPOSE 10081
