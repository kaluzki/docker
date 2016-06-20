# docker build --no-cache -t kaluzki/zend-server:abstract zend-server/abstract
# docker run --rm -p 80:80 kaluzki/zend-server:abstract
FROM kaluzki/abstract
MAINTAINER Kaluzki Demjan <kaluzkidemjan@gmail.com>

ENV DEBIAN_FRONTEND noninteractive
ENV PATH "$PATH:/usr/local/zend/bin"

COPY ./sbin /usr/local/sbin

RUN usermod -u 1000 www-data && groupmod -g 1000 www-data

RUN docker-apt apache2 \
               unixodbc \
               libgomp1 \
               libpng3 \
               libmcrypt4 \
               libsybdb5 \
               libpq5 \
               libssh2-1 \
               libaio1 \
               sqlite3 \
               execstack && \
    docker-finalize

EXPOSE 80
EXPOSE 10081

CMD ["docker-apache-foreground"]