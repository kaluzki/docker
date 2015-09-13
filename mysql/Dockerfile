FROM phusion/baseimage
MAINTAINER Kaluzki Demjan <kaluzkidemjan@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get install -y mysql-server mysql-client && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN cd /etc/mysql/conf.d/ && \
    echo "[mysqld]" >> docker.cnf && \
    echo "bind-address = 0.0.0.0" >> docker.cnf && \
    echo "skip-name-resolve" >> docker.cnf && \
    echo "skip-host-cache" >> docker.cnf

RUN mysql_install_db && \
    service mysql start && sleep 10s && \
    mysql_tzinfo_to_sql /usr/share/zoneinfo | mysql mysql && \
    echo "DROP DATABASE IF EXISTS test;\n\
          SET PASSWORD FOR 'root'@'localhost' = PASSWORD('root');\n\
          GRANT ALL ON *.* TO 'root'@'localhost' WITH GRANT OPTION;\n\
          FLUSH PRIVILEGES;" | mysql mysql && \
    service mysql stop

EXPOSE 3306