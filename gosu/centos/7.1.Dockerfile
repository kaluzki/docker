# auto generated
# docker build -t gosu/centos:7.1 -f centos/7.1.Dockerfile .
FROM centos:7.1
COPY --from=gosu/assets /opt/gosu /opt/gosu
RUN set -x \
    && /opt/gosu/gosu.install.sh \
    && rm -fr /opt/gosu
