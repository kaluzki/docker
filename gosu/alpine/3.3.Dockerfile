# auto generated
# docker build -t gosu/alpine:3.3 -f alpine/3.3.Dockerfile .
FROM alpine:3.3
COPY --from=gosu/assets /opt/gosu /opt/gosu
RUN set -x \
    && /opt/gosu/gosu.install.sh \
    && rm -fr /opt/gosu
