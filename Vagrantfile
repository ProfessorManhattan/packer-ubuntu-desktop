# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.ssh.insert_key = false

  config.vm.define "ubuntu" do |ubuntu|
    ubuntu.vm.box="ProfessorManhattan/Ubuntu-Desktop"
    ubuntu.vm.box_version = "20.04.2"
    ubuntu.vm.hostname = "vagrant-ubuntu"
    ubuntu.vm.network "private_network",
      ip:"172.24.24.2",
      netmask:"255.255.255.0"
    ubuntu.vm.provider "virtualbox" do |vb|
      vb.customize ["modifyvm", :id, "--vram", "256"]
    end
  end

  config.vm.provision "ansible" do |ansible|
    ansible.compatibility_mode = "2.0"
    ansible.inventory_path = "../../inventories/vagrant.yml"
    ansible.playbook = "../../main.yml"
  end
end
