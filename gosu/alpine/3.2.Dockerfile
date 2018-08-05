# auto generated
# docker build -t gosu/alpine:3.2 -f alpine/3.2.Dockerfile .
FROM alpine:3.2
COPY --from=gosu/assets /opt/gosu /opt/gosu
RUN set -x \
    && /opt/gosu/gosu.install.sh \
    && rm -fr /opt/gosu
