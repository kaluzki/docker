#!/bin/bash

apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
echo deb https://apt.dockerproject.org/repo ubuntu-trusty main > /etc/apt/sources.list.d/docker.list
apt-get update
apt-get purge lxc-docker*
apt-cache policy docker-engine
apt-get install -y docker-engine=1.8.2-0~trusty lvm2 thin-provisioning-tools
usermod -aG docker vagrant