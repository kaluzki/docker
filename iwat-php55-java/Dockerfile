FROM kaluzki/iwat-php55
MAINTAINER Kaluzki Demjan <kaluzkidemjan@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get install -y default-jre && \
    apt-get autoremove -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*