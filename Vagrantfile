# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.ssh.insert_key = false

  config.vm.define "ubuntu2004" do |ubuntu2004|
    ubuntu2004.vm.box="ProfessorManhattan/Molecule-Ubuntu-2004-Desktop"
    config.vm.box_version = "1.0.0"
    ubuntu2004.vm.hostname = "vagrant-ubuntu2004"
    ubuntu2004.vm.network "private_network",
      ip:"172.24.24.2",
      netmask:"255.255.255.0"
  end

  config.vm.provision "ansible" do |ansible|
    ansible.compatibility_mode = "2.0"
    ansible.playbook = "../../main.yml"
    ansible.inventory_path = "../../inventories/vagrant-ubuntu2004.yml"
    ansible.become = true
  end

end
