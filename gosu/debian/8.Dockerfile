# auto generated
# docker build -t gosu/debian:8 -f debian/8.Dockerfile .
FROM debian:8
COPY --from=gosu/assets /opt/gosu /opt/gosu
RUN set -x \
    && /opt/gosu/gosu.install.sh \
    && rm -fr /opt/gosu
