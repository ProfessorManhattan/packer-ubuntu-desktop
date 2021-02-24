# -*- mode: ruby -*-
# vi: set ft=ruby :
# TODO Set RAM to at least 4GB
Vagrant.configure("2") do |config|

  config.ssh.insert_key = false

  config.vm.define "ubuntu" do |ubuntu|
    ubuntu.vm.box="ProfessorManhattan/Base-Ubuntu-Desktop"
    ubuntu.vm.hostname = "vagrant-ubuntu"
    ubuntu.vm.network "private_network",
      ip:"172.24.24.2",
      netmask:"255.255.255.0"
    ubuntu.vm.provider "virtualbox" do |vb|
      vb.customize ["modifyvm", :id, "--vram", "256"]
      vb.memory = 4096
      vb.cpus = 4
    end
  end
end
