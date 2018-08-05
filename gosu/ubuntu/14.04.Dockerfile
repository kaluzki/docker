# auto generated
# docker build -t gosu/ubuntu:14.04 -f ubuntu/14.04.Dockerfile .
FROM ubuntu:14.04
COPY --from=gosu/assets /opt/gosu /opt/gosu
RUN set -x \
    && /opt/gosu/gosu.install.sh \
    && rm -fr /opt/gosu
