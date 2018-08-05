# auto generated
# docker build -t gosu/ubuntu:trusty -f ubuntu/trusty.Dockerfile .
FROM ubuntu:trusty
COPY --from=gosu/assets /opt/gosu /opt/gosu
RUN set -x \
    && /opt/gosu/gosu.install.sh \
    && rm -fr /opt/gosu
