# docker build --no-cache -t kaluzki/zend-server:php55 zend-server/php55
# docker run --rm -p 80:80 kaluzki/zend-server:php55
FROM kaluzki/zend-server:abstract
MAINTAINER Kaluzki Demjan <kaluzkidemjan@gmail.com>

RUN docker-zs-add-repo 8.5 && \
    docker-apt zend-server-php-5.5 && \
    docker-finalize