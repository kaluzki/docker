#!/bin/bash

${CURL_VERSION:="7.45.0"}

curl -L http://curl.haxx.se/download/curl-${CURL_VERSION}.tar.gz | tar xz &&\
cd curl-${CURL_VERSION} &&\
./buildconf &&\
./configure &&\
make &&\
make install &&\
rm /usr/bin/curl -f &&\
cp /usr/local/bin/curl /usr/bin/curl &&\
cd .. &&\
rm -r curl-${CURL_VERSION}