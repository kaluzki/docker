Vagrant.configure("2") do |config|
    config.vm.box = "kaluzki/docker"
    config.ssh.insert_key = false
    config.vm.hostname = "docker"

    config.vm.network "private_network", ip: "10.10.10.10"

    config.vm.provider "virtualbox" do |vb|
        vb.customize [ 'modifyvm', :id, '--nicpromisc2', 'allow-all']
    end
end