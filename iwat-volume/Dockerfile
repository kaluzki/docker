FROM phusion/baseimage
MAINTAINER Kaluzki Demjan <kaluzkidemjan@gmail.com>
RUN mkdir -p /interexa/php/ZF/ && \
    cd /interexa/php/ZF && \
    curl https://packages.zendframework.com/releases/ZendFramework-1.10.1/ZendFramework-1.10.1.tar.gz | tar xz && \
    mv ZendFramework-1.10.1 head

RUN mkdir -p /interexa/js/dojo/ && \
    cd /interexa/js/dojo && \
    curl http://download.dojotoolkit.org/release-1.10.4/dojo-release-1.10.4-src.tar.gz | tar xz && \
    mv dojo-release-1.10.4-src 1.10.4

RUN chown -R 1000:1000 /interexa