# auto generated
# docker build -t gosu/fedora:27 -f fedora/27.Dockerfile .
FROM fedora:27
COPY --from=gosu/assets /opt/gosu /opt/gosu
RUN set -x \
    && /opt/gosu/gosu.install.sh \
    && rm -fr /opt/gosu
