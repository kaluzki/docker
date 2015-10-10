# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
    config.vm.box = "phusion/ubuntu-14.04-amd64"

    config.vm.synced_folder ".persistent/var/lib/docker", "/var/lib/docker",
        create: true,
        owner: "root",
        group: "root"

    config.vm.provision "install-docker", type: "shell", inline: <<-SHELL
        apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
        echo deb https://apt.dockerproject.org/repo ubuntu-trusty main > /etc/apt/sources.list.d/docker.list
        apt-get update
        apt-get purge lxc-docker*
        apt-cache policy docker-engine
        apt-get install -y docker-engine=1.8.2-0~trusty
        usermod -aG docker vagrant
    SHELL
end