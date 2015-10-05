Vagrant.configure("2") do |config|
  config.vm.box = "phusion/ubuntu-14.04-amd64"
  config.vm.provision "docker" do |d|
    d.pull_images "phusion/baseimage"
    d.pull_images "tonistiigi/dnsdock"
  end
end