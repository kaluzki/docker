# docker build -t kaluzki/alpine-php7 -f alpine-php7.Dockerfile .
FROM kaluzki/alpine
MAINTAINER kaluzkidemjan@gmail.com

RUN set -x \
    && docker-apk-install \
        php7 \
        php7-fpm