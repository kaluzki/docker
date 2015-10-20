#!/bin/bash

service docker stop

source /etc/default/docker
DOCKER_OPTS+=" --insecure-registry=172.17.42.1:5000"
echo DOCKER_OPTS=\"$DOCKER_OPTS\" > /etc/default/docker

ip link set docker0 down
brctl delbr docker0
service docker start

docker run -d -p 5000:5000 --restart=always --name registry \
    -v /vagrant/.persistent/var/lib/registry:/var/lib/registry \
    registry:$REGISTRY_VERSION