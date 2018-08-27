# docker build -t runs/70 -f 70.Dockerfile .
FROM webdevops/php-dev:7.0

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
