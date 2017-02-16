#!/bin/bash

service docker stop

source /etc/default/docker
DOCKER_OPTS+=" --bip=172.17.42.1/16 -dns=172.17.42.1 --dns=8.8.8.8"
echo DOCKER_OPTS=\"$DOCKER_OPTS\" > /etc/default/docker

ip link set docker0 down
brctl delbr docker0
service docker start

docker run -d -p 53:53/udp --restart=always --name dnsdock \
    -v /var/run/docker.sock:/var/run/docker.sock \
    tonistiigi/dnsdock:$DNSDOCK_VERSION

echo "nameserver 172.17.42.1" > /etc/resolvconf/resolv.conf.d/head
service resolvconf restart