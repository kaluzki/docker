# auto generated
# docker build -t gosu/debian:9 -f debian/9.Dockerfile .
FROM debian:9
COPY --from=gosu/assets /opt/gosu /opt/gosu
RUN set -x \
    && /opt/gosu/gosu.install.sh \
    && rm -fr /opt/gosu
