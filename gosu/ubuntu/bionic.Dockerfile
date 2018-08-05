# auto generated
# docker build -t gosu/ubuntu:bionic -f ubuntu/bionic.Dockerfile .
FROM ubuntu:bionic
COPY --from=gosu/assets /opt/gosu /opt/gosu
RUN set -x \
    && /opt/gosu/gosu.install.sh \
    && rm -fr /opt/gosu
