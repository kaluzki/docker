# auto generated
# docker build -t gosu/debian:stretch -f debian/stretch.Dockerfile .
FROM debian:stretch
COPY --from=gosu/assets /opt/gosu /opt/gosu
RUN set -x \
    && /opt/gosu/gosu.install.sh \
    && rm -fr /opt/gosu
