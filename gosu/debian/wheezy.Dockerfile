# auto generated
# docker build -t gosu/debian:wheezy -f debian/wheezy.Dockerfile .
FROM debian:wheezy
COPY --from=gosu/assets /opt/gosu /opt/gosu
RUN set -x \
    && /opt/gosu/gosu.install.sh \
    && rm -fr /opt/gosu
