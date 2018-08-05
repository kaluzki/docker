# auto generated
# docker build -t gosu/fedora:latest -f fedora/latest.Dockerfile .
FROM fedora:latest
COPY --from=gosu/assets /opt/gosu /opt/gosu
RUN set -x \
    && /opt/gosu/gosu.install.sh \
    && rm -fr /opt/gosu
