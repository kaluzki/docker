# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
    config.vm.provider "virtualbox" do |v|
      v.memory = 2048
      v.cpus   = 2
    end

    config.vm.box = "ubuntu/trusty64"

    config.vm.provision "install-docker", type: "shell", inline: <<-SHELL
        apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
        echo deb https://apt.dockerproject.org/repo ubuntu-trusty main > /etc/apt/sources.list.d/docker.list
        apt-get update
        apt-get purge lxc-docker*
        apt-cache policy docker-engine
        apt-get install -y docker-engine=1.8.2-0~trusty lvm2 thin-provisioning-tools
        usermod -aG docker vagrant

        curl -L https://github.com/docker/compose/releases/download/1.4.2/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
        chmod +x /usr/local/bin/docker-compose
        curl -L https://raw.githubusercontent.com/docker/compose/1.4.2/contrib/completion/bash/docker-compose > /etc/bash_completion.d/docker-compose
    SHELL

    config.vm.provision "configure-docker", type: "shell", inline: <<-SHELL
        echo "nameserver 172.17.42.1" > /etc/resolvconf/resolv.conf.d/head
        service resolvconf restart

        echo "DOCKER_OPTS='--storage-driver=devicemapper \
                           --bip=172.17.42.1/24 \
                           --dns=172.17.42.1 \
                           --dns=8.8.8.8 \
                           --insecure-registry=172.17.42.1:5000'" > /etc/default/docker
        service docker restart

        docker run -d -p 53:53/udp --name dnsdock \
            -v /var/run/docker.sock:/var/run/docker.sock \
            tonistiigi/dnsdock:v1.10.0

        docker run -d -p 5000:5000 --restart=always --name registry \
            -e SEARCH_BACKEND=sqlalchemy \
            -e STORAGE_PATH=/registry \
            -v /vagrant/.persistent/registry:/registry \
            registry:2.1.1
    SHELL
end