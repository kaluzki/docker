#!/bin/bash

${RESTY_VERSION:="2.2"}

curl -L https://github.com/micha/resty/archive/${RESTY_VERSION}.tar.gz | tar xz &&\
cd resty-${RESTY_VERSION} &&\
./buildconf &&\
./configure &&\
make &&\
make install &&\
rm /usr/bin/curl -f &&\
cp /usr/local/bin/curl /usr/bin/curl &&\
cd .. &&\
rm -r curl-${CURL_VERSION}