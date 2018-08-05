# auto generated
# docker build -t gosu/alpine:latest -f alpine/latest.Dockerfile .
FROM alpine:latest
COPY --from=gosu/assets /opt/gosu /opt/gosu
RUN set -x \
    && /opt/gosu/gosu.install.sh \
    && rm -fr /opt/gosu
