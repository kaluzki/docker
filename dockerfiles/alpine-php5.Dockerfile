# docker build -t kaluzki/alpine-php5 -f alpine-php5.Dockerfile .
FROM kaluzki/alpine
MAINTAINER kaluzkidemjan@gmail.com

RUN set -x \
    && docker-apk-install \
        php5 \
        php5-fpm