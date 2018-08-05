# auto generated
# docker build -t gosu/ubuntu:18.04 -f ubuntu/18.04.Dockerfile .
FROM ubuntu:18.04
COPY --from=gosu/assets /opt/gosu /opt/gosu
RUN set -x \
    && /opt/gosu/gosu.install.sh \
    && rm -fr /opt/gosu
