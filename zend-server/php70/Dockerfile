# docker build -t kaluzki/zend-server:php70 zend-server/php70
FROM kaluzki/zend-server:abstract
MAINTAINER Kaluzki Demjan <kaluzkidemjan@gmail.com>

RUN docker-zs-add-repo 9.0 && \
    docker-apt zend-server-php-7.0 && \
    docker-finalize