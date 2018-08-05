# auto generated
# docker build -t gosu/centos:6.6 -f centos/6.6.Dockerfile .
FROM centos:6.6
COPY --from=gosu/assets /opt/gosu /opt/gosu
RUN set -x \
    && /opt/gosu/gosu.install.sh \
    && rm -fr /opt/gosu
