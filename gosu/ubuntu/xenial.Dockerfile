# auto generated
# docker build -t gosu/ubuntu:xenial -f ubuntu/xenial.Dockerfile .
FROM ubuntu:xenial
COPY --from=gosu/assets /opt/gosu /opt/gosu
RUN set -x \
    && /opt/gosu/gosu.install.sh \
    && rm -fr /opt/gosu
