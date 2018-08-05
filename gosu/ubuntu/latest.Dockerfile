# auto generated
# docker build -t gosu/ubuntu:latest -f ubuntu/latest.Dockerfile .
FROM ubuntu:latest
COPY --from=gosu/assets /opt/gosu /opt/gosu
RUN set -x \
    && /opt/gosu/gosu.install.sh \
    && rm -fr /opt/gosu
