# auto generated
# docker build -t gosu/debian:jessie -f debian/jessie.Dockerfile .
FROM debian:jessie
COPY --from=gosu/assets /opt/gosu /opt/gosu
RUN set -x \
    && /opt/gosu/gosu.install.sh \
    && rm -fr /opt/gosu
