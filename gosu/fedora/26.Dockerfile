# auto generated
# docker build -t gosu/fedora:26 -f fedora/26.Dockerfile .
FROM fedora:26
COPY --from=gosu/assets /opt/gosu /opt/gosu
RUN set -x \
    && /opt/gosu/gosu.install.sh \
    && rm -fr /opt/gosu
