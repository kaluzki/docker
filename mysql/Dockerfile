FROM phusion/baseimage
MAINTAINER Kaluzki Demjan <kaluzkidemjan@gmail.com>

CMD ["/sbin/my_init"]

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get install -y mysql-server && \
    service mysql stop && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

VOLUME ["/var/lib/mysql"]

EXPOSE 3306
