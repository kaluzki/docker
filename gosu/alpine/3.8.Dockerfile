# auto generated
# docker build -t gosu/alpine:3.8 -f alpine/3.8.Dockerfile .
FROM alpine:3.8
COPY --from=gosu/assets /opt/gosu /opt/gosu
RUN set -x \
    && /opt/gosu/gosu.install.sh \
    && rm -fr /opt/gosu
