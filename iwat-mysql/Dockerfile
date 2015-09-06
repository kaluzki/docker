FROM kaluzki/mysql
MAINTAINER Kaluzki Demjan <kaluzkidemjan@gmail.com>

COPY create-ixuser.sql /tmp/
RUN service mysql start && \
    mysql_tzinfo_to_sql /usr/share/zoneinfo | mysql mysql && \
    cat /tmp/create-ixuser.sql | mysql  && \
    rm /tmp/create-ixuser.sql && \
    service mysql stop