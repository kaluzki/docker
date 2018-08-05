# docker build -t gosu/assets assets
FROM alpine
COPY *.sh /opt/gosu/
RUN set -x \
    && apk add --no-cache --virtual .gosu-deps \
		dpkg \
		gnupg \
		openssl \
	&& /opt/gosu/gosu.download.sh \
    && apk del .gosu-deps \
    && rm /tmp/* -rf