$prepareDocker = <<SCRIPT
echo "DOCKER_OPTS='--bip=172.17.42.1/24 --dns=172.17.42.1'" > /etc/default/docker
echo "nameserver 172.17.42.1" > /etc/resolvconf/resolv.conf.d/head
SCRIPT

Vagrant.configure("2") do |config|
    config.vm.box = "phusion/ubuntu-14.04-amd64"
    config.vm.provision "shell", inline: $prepareDocker
    config.vm.provision "docker" do |d|
        d.pull_images "phusion/baseimage"
        d.run "dnsdock", image: "tonistiigi/dnsdock:v1.10.0", args: "-d -v '/var/run/docker.sock:/var/run/docker.sock' -p 172.17.42.1:53:53/udp"
    end
end