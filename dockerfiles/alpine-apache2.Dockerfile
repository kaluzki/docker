# docker build -t kaluzki/alpine-apache2 -f alpine-apache2.Dockerfile .
FROM kaluzki/alpine
MAINTAINER kaluzkidemjan@gmail.com

RUN set -x \
    && docker-apk-install \
        apache2

EXPOSE 80 443