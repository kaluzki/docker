#!/bin/bash

curl -L https://github.com/clvv/fasd/archive/1.0.1.tar.gz | tar xz &&\
cd fasd-1.0.1 && make install && cd .. && rm fasd-1.0.1 -R