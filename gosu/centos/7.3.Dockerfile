# auto generated
# docker build -t gosu/centos:7.3 -f centos/7.3.Dockerfile .
FROM centos:7.3
COPY --from=gosu/assets /opt/gosu /opt/gosu
RUN set -x \
    && /opt/gosu/gosu.install.sh \
    && rm -fr /opt/gosu
