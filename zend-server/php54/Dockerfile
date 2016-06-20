# docker build --no-cache -t kaluzki/zend-server:php54 zend-server/php54
# docker run --rm -p 80:80 kaluzki/zend-server:php54
FROM kaluzki/zend-server:abstract
MAINTAINER Kaluzki Demjan <kaluzkidemjan@gmail.com>

RUN docker-zs-add-repo 7.0 && \
    docker-apt zend-server-php-5.4 && \
    docker-zs-install-xdebug && \
    docker-finalize