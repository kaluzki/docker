# auto generated
# docker build -t gosu/debian:latest -f debian/latest.Dockerfile .
FROM debian:latest
COPY --from=gosu/assets /opt/gosu /opt/gosu
RUN set -x \
    && /opt/gosu/gosu.install.sh \
    && rm -fr /opt/gosu
