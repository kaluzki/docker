# auto generated
# docker build -t gosu/fedora:28 -f fedora/28.Dockerfile .
FROM fedora:28
COPY --from=gosu/assets /opt/gosu /opt/gosu
RUN set -x \
    && /opt/gosu/gosu.install.sh \
    && rm -fr /opt/gosu
