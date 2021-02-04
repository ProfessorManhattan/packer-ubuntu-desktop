# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.ssh.insert_key = false

  config.vm.define "ubuntu2004" do |ubuntu2004|
    ubuntu2004.vm.box="snowflake/ubuntu2004s"
    ubuntu2004.vm.hostname = "ubuntu2004-server-desktop"
    ubuntu2004.vm.network "private_network",
      ip:"172.24.0.2", 
      netmask:"255.255.255.0"
      end
     end