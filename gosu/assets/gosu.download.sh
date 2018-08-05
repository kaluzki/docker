#!/usr/bin/env sh

###
 # $1 -> to = /opt/gosu
 ##
main() {
    local version arch aliases alias binary asc url=https://github.com/tianon/gosu/releases/download/
    local to=${1:-/opt/gosu}
    mkdir -p ${to}
    export GNUPGHOME=$(mktemp -d)

    gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;

    for version in 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 1.10
    do

        mkdir -p "${to}/${version}" "${GNUPGHOME}/asc/${version}"

        for arch in amd64:x86_64 i386:x86:i686 arm64 armel armhf ppc64 ppc64el s390x
        do
            aliases=$(echo ${arch} | cut -s -d ':' -f2- | sed -e 's/:/ /g')
            arch=$(echo ${arch} | cut -d ':' -f1)

            binary="${to}/${version}/gosu-${arch}"
            asc="${GNUPGHOME}/asc/${version}/gosu-${arch}.asc"

            wget -O ${binary} "${url}${version}/gosu-${arch}" && {

                wget -O ${asc} "${url}${version}/gosu-${arch}.asc"

                # verify the signature
                gpg --batch --verify ${asc} ${binary}

                for alias in ${aliases}
                do
                    cp ${binary} "${to}/${version}/gosu-${alias}"
                    chmod +x "${to}/${version}/gosu-${alias}"
                done

            } || {
                rm -f ${binary}
            }
        done
    done
}

main $@