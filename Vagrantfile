# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
    config.vm.box = "kaluzki/docker"
    config.ssh.insert_key = false
    config.vm.hostname = "docker"

    config.vm.network "private_network", ip: "10.10.10.10"

    config.vm.provider "virtualbox" do |vb|
        vb.customize [ 'modifyvm', :id, '--nicpromisc2', 'allow-all']
    end

    config.vm.provision "configure-docker", type: "shell", inline: <<-SHELL
        echo "nameserver 172.17.42.1" > /etc/resolvconf/resolv.conf.d/head
        service resolvconf restart

        echo "DOCKER_OPTS='--storage-driver=devicemapper \
                           --bip=172.17.42.1/16 \
                           --dns=172.17.42.1 \
                           --dns=8.8.8.8 \
                           --insecure-registry=172.17.42.1:5000'" > /etc/default/docker
        service docker restart

        docker run -d -p 53:53/udp --name dnsdock \
            -v /var/run/docker.sock:/var/run/docker.sock \
            tonistiigi/dnsdock:v1.10.0

        docker run -d -p 5000:5000 --restart=always --name registry \
            -v /vagrant/.persistent/var/lib/registry:/var/lib/registry \
            registry:2.1.1
    SHELL
end