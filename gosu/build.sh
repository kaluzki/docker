#!/usr/bin/env sh

###
 # $1 -> build = 0
 ##
main() {
    local file tags from tag maintainer=${PWD##*/}
    local build=${1:-}

    for tags in \
        "alpine:3.1 3.2 3.3 3.4 3.5 3.6 3.7 3.8 latest" \
        "ubuntu:14.04 trusty 16.04 xenial 18.04 bionic latest" \
        "centos:6.6 6.7 6.8 6.9 6 7.0 7.1 7.2 7.3 7.4 7.5 7 latest" \
        "debian:7 wheezy 8 jessie 9 stretch latest" \
        "fedora:26 27 28 latest"
    do
        from=$(echo "$tags" | cut -d ':' -f1)
        mkdir -p ${from}
        for tag in $(echo "$tags" | cut -d ':' -f2)
        do
            file="${from}/${tag}.Dockerfile"
            cat <<EOF > ${file}
# auto generated
# docker build -t ${maintainer}/${from}:${tag} -f ${file} .
FROM ${from}:${tag}
COPY --from=gosu/assets /opt/gosu /opt/gosu
RUN set -x \\
    && /opt/gosu/gosu.install.sh \\
    && rm -fr /opt/gosu
EOF
            [ ${build} ] && {
                docker build -t ${maintainer}/${from}:${tag} -f ${file} .
            }
        done
    done
}

main $@