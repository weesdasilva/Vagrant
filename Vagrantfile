# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |config|
  config.vm.provision "file", source: "keys/key", destination: "/home/vagrant/key"
  config.vm.provision "file", source: "keys/key.pub", destination: "/home/vagrant/key.pub"

  # Machine 01
  config.vm.define "gogs" do |master|
    master.vm.provider "virtualbox" do |vb|
      vb.memory=512
    end
    master.vm.hostname = "gogs"
    master.vm.box = "centos/7"
    master.vm.box_check_update = false
    master.vm.network "private_network",ip: "192.168.200.10", dns:"8.8.8.8"
  end

  #Machine 02
  config.vm.define "cluster" do |node01|
    node01.vm.provider "virtualbox" do |vb|
      vb.memory=1024
    end
    node01.vm.hostname = "cluster"
    node01.vm.box = "centos/7"
    node01.vm.box_check_update = false
    node01.vm.network "private_network",ip: "192.168.200.11", dns:"8.8.8.8"
  end
end
