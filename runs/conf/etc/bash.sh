#!/usr/bin/env bash

for i in /opt/docker/etc/bash.d/*.sh; do
  . "$i"
done
unset i
