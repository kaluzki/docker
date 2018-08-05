# auto generated
# docker build -t gosu/centos:latest -f centos/latest.Dockerfile .
FROM centos:latest
COPY --from=gosu/assets /opt/gosu /opt/gosu
RUN set -x \
    && /opt/gosu/gosu.install.sh \
    && rm -fr /opt/gosu
