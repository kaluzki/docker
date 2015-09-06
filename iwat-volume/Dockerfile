FROM phusion/baseimage
MAINTAINER Kaluzki Demjan <kaluzkidemjan@gmail.com>
RUN mkdir -p /interexa/php/ZF/ && \
    cd /interexa/php/ZF && \
    curl https://packages.zendframework.com/releases/ZendFramework-1.10.1/ZendFramework-1.10.1.tar.gz | tar xz && \
    mv ZendFramework-1.10.1 head

RUN chown -R 1000:1000 /interexa
