# auto generated
# docker build -t gosu/centos:7.2 -f centos/7.2.Dockerfile .
FROM centos:7.2
COPY --from=gosu/assets /opt/gosu /opt/gosu
RUN set -x \
    && /opt/gosu/gosu.install.sh \
    && rm -fr /opt/gosu
