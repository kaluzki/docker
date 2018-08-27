#!/usr/bin/env bash

curl -sL https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | bash
curl -sL https://deb.nodesource.com/setup_10.x | bash
apt-install less git-lfs nodejs mysql-client
npm install npm --global
composer self-update