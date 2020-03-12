# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.provision "shell", inline: <<-SHELL
  echo "10.10.0.1 centos.exemplo.com centos" >> /etc/hosts
  echo "10.10.0.2 debian.exemplo.com debian" >> /etc/hosts
  SHELL

  # Machine 01
  config.vm.define "Centos" do |centos|
    centos.vm.provider "virtualbox" do |vb|
      vb.name = "CentOS"
      vb.memory=512
      vb.customize ["modifyvm", :id, "--groups", "/Machines"]
    end
    centos.vm.hostname = "centos"
    centos.vm.box = "centos/7"
    centos.vm.box_check_update = false
    centos.vm.network "private_network",ip: "10.10.0.2", dns:"1.1.1.1"
  end

  #Machine 02
  config.vm.define "Debian" do |debian|
    debian.vm.provider "virtualbox" do |vb|
      vb.name = "Debian"
      vb.memory=1024
      vb.customize ["modifyvm", :id, "--groups", "/Machines"]
    end
    debian.vm.hostname = "debian"
    debian.vm.box = "debian/buster64"
    debian.vm.box_check_update = false
    debian.vm.network "private_network",ip: "10.10.0.3", dns:"1.1.1.1"
  end

  config.vm.provision "shell", path: "script.sh"
end
