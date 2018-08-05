# auto generated
# docker build -t gosu/centos:6.9 -f centos/6.9.Dockerfile .
FROM centos:6.9
COPY --from=gosu/assets /opt/gosu /opt/gosu
RUN set -x \
    && /opt/gosu/gosu.install.sh \
    && rm -fr /opt/gosu
