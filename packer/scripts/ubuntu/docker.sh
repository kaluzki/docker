#!/bin/bash

apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
echo deb https://apt.dockerproject.org/repo ubuntu-trusty main > /etc/apt/sources.list.d/docker.list
apt-get update
apt-get purge lxc-docker*
apt-cache policy docker-engine
apt-get install -y docker-engine="$DOCKER_VERSION~trusty" lvm2 thin-provisioning-tools bridge-utils
usermod -aG docker vagrant
echo "DOCKER_OPTS='--storage-driver=devicemapper'" > /etc/default/docker
service docker restart