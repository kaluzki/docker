#!/usr/bin/env bash

cat <<EOF >> /etc/bash.bashrc
. /opt/docker/etc/bash.sh
EOF

rm -f /home/application/.bashrc /home/application/.profile /home/application/.bash_logout
