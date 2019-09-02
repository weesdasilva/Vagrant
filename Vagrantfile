# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |config|
  config.vm.provision "file", source: "keys/key", destination: "/home/vagrant/key"
  config.vm.provision "file", source: "keys/key.pub", destination: "/home/vagrant/key.pub"

  # Bloco de execução SHELL
  config.vm.provision "shell", inline: <<-SHELL
  echo "192.168.200.10 serverx.exemplo.com serverx" >> /etc/hosts

  mkdir -p /root/.ssh

  mv /home/vagrant/key.pub /root/.ssh/authorized_keys
  mv /home/vagrant/key /root/.ssh/id_rsa

  chmod 600 /root/.ssh/id_rsa
  SHELL

  # Machine 01
  config.vm.define "machine1" do |serverx|
    serverx.vm.provider "virtualbox" do |vb|
      vb.memory=512
    end
    serverx.vm.hostname = "serverx"
    serverx.vm.box = "centos/7"
    serverx.vm.box_check_update = false
    serverx.vm.network "private_network",ip: "192.168.200.10", dns:"8.8.8.8"
  end

  #Machine 02
  config.vm.define "machine2" do |servery|
    servery.vm.provider "virtualbox" do |vb|
      vb.memory=1024
    end
    servery.vm.hostname = "servery"
    servery.vm.box = "centos/7"
    servery.vm.box_check_update = false
    servery.vm.network "private_network",ip: "192.168.200.11", dns:"8.8.8.8"
  end
end
