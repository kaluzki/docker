# docker build -t kaluzki/zend-server:php56 zend-server/php56
FROM kaluzki/zend-server:abstract
MAINTAINER Kaluzki Demjan <kaluzkidemjan@gmail.com>

RUN docker-zs-add-repo 8.5 && \
    docker-apt zend-server-php-5.6 && \
    docker-finalize