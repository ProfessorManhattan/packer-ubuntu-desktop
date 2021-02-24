# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.ssh.insert_key = false

  config.vm.define "ubuntu" do |ubuntu|
    ubuntu.vm.box="ProfessorManhattan/Base-Ubuntu-Desktop"
    ubuntu.vm.box_version = "20.04.2"
    ubuntu.vm.hostname = "vagrant-ubuntu"
    ubuntu.vm.network "private_network",
      ip:"172.24.24.2",
      netmask:"255.255.255.0"
    ubuntu.vm.provider "virtualbox" do |vb|
      vb.customize ["modifyvm", :id, "--vram", "256"]
    end
  end
end
