# auto generated
# docker build -t gosu/ubuntu:12.04 -f ubuntu/12.04.Dockerfile .
FROM ubuntu:12.04
COPY --from=gosu/assets /opt/gosu /opt/gosu
RUN set -x \
    && /opt/gosu/gosu.install.sh \
    && rm -fr /opt/gosu
