# auto generated
# docker build -t gosu/debian:7 -f debian/7.Dockerfile .
FROM debian:7
COPY --from=gosu/assets /opt/gosu /opt/gosu
RUN set -x \
    && /opt/gosu/gosu.install.sh \
    && rm -fr /opt/gosu
