#!/usr/bin/env sh

###
 # $1 -> version = 1.10
 # $2 -> from    = /opt/gosu
 # $3 -> to      = /usr/local/bin
 ##
main() {
    local version=${1:-1.10}
    local from=${2:-/opt/gosu}
    local to=${3:-/usr/local/bin}
    local arch=$(uname -m)

    cp "${from}/${version}/gosu-${arch}" "${to}/gosu"
    chmod +x "${to}/gosu"

    # verify that the binary works
    gosu nobody true
}

main $@