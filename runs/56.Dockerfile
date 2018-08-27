# docker build -t runs/56 -f 56.Dockerfile .
FROM webdevops/php-dev:debian-8

ENV XDEBUG_CONFIG="idekey=phpstorm" \
    PHP_IDE_CONFIG="serverName=app" \
    COMPOSER_ALLOW_XDEBUG=1 \
    XDEBUG_REMOTE_HOST=172.17.0.1 \
    PHP_DEBUGGER=none

COPY conf/ /opt/docker/
WORKDIR /app

RUN set -x \
    &&  docker-run-bootstrap \
    &&  docker-image-cleanup
