FROM phusion/baseimage
MAINTAINER Kaluzki Demjan <kaluzkidemjan@gmail.com>

RUN mkdir -p /interexa/php/ZF /interexa/js/dojo

RUN cd /interexa/php/ZF && \
    curl https://packages.zendframework.com/releases/ZendFramework-1.10.1/ZendFramework-1.10.1.tar.gz | tar xz && \
    mv ZendFramework-1.10.1 head

RUN cd /interexa/js/dojo && \
    curl http://download.dojotoolkit.org/release-1.10.4/dojo-release-1.10.4-src.tar.gz | tar xz && \
    mv dojo-release-1.10.4-src 1.10.4

RUN cd /interexa/js/dojo && \
    curl http://download.dojotoolkit.org/release-1.9.3/dojo-release-1.9.3-src.tar.gz | tar xz && \
    mv dojo-release-1.9.3-src 1.9.3

RUN chown -R 1000:1000 /interexa