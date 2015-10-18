#!/bin/bash

curl -L https://github.com/docker/compose/releases/download/1.4.2/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
curl -L https://raw.githubusercontent.com/docker/compose/1.4.2/contrib/completion/bash/docker-compose > /etc/bash_completion.d/docker-compose