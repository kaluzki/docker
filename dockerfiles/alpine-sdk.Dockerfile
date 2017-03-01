# docker build -t kaluzki/alpine-sdk -f alpine-sdk.Dockerfile .
FROM kaluzki/alpine
MAINTAINER kaluzkidemjan@gmail.com

RUN set -x \
    && docker-apk-install \
        alpine-sdk