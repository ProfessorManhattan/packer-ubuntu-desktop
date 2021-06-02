# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.require_version ">= 1.6.2"

Vagrant.configure("2") do |config|

  config.ssh.insert_key = false
  config.ssh.password = "vagrant"
  config.ssh.username = "vagrant"

  config.vm.define :ubuntu do |ubuntu|
    ubuntu.vm.box="Megabyte/Ubuntu-Desktop"
    ubuntu.vm.hostname = "vagrant-ubuntu"
    ubuntu.vm.network :forwarded_port, guest: 22, host: 58022, id: "ssh", auto_correct: true
    ubuntu.vm.network :forwarded_port, guest: 3389, host: 53389, id: "rdp", auto_correct: true
    ubuntu.vm.network :forwarded_port, guest: 443, host: 58443, id: "https", auto_correct: true
    ubuntu.vm.network :forwarded_port, guest: 80, host: 58080, id: "http", auto_correct: true
    ubuntu.vm.network :private_network, ip: "172.24.24.2", netmask: "255.255.255.0"

    ubuntu.vm.provider :hyperv do |v|
      v.cpus = 2
      v.maxmemory = 4096
      v.vmname = "Ubuntu Desktop 21.04"
    end

    ubuntu.vm.provider :libvirt do |v, override|
      v.cpus = 2
      v.memory = 4096
      # Use WinRM for the default synced folder; or disable it if
      # WinRM is not available. Linux hosts don't support SMB,
      # and Windows guests don't support NFS/9P/rsync
      # Source: https://github.com/Cimpress-MCP/vagrant-winrm-syncedfolders
      if Vagrant.has_plugin?("vagrant-winrm-syncedfolders")
          override.vm.synced_folder ".", "/vagrant", type: "winrm"
      else
          override.vm.synced_folder ".", "/vagrant", disabled: true
      end
      # Enable Hyper-V enlightments - Source: https://blog.wikichoon.com/2014/07/enabling-hyper-v-enlightenments-with-kvm.html
      v.hyperv_feature :name => 'stimer', :state => 'on'
      v.hyperv_feature :name => 'relaxed', :state => 'on'
      v.hyperv_feature :name => 'vapic', :state => 'on'
      v.hyperv_feature :name => 'synic', :state => 'on'
    end


    ubuntu.vm.provider :parallels do |v|
      v.cpus = 2
      v.memory = 4096
      v.name = "Ubuntu Desktop 21.04"
      v.update_guest_tools = true
    end

    ubuntu.vm.provider :virtualbox do |v|
      v.check_guest_additions = true
      v.cpus = 2
      v.customize ["modifyvm", :id, "--accelerate3d", "on"]
      v.customize ["modifyvm", :id, "--clipboard", "bidirectional"]
      v.customize ["modifyvm", :id, "--cpus", "2"]
      v.customize ["modifyvm", :id, "--graphicscontroller", "vmsvga"]
      v.customize ["modifyvm", :id, "--hwvirtex", "on"]
      v.customize ["modifyvm", :id, "--memory", "4096"]
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--vram", "256"]
      v.customize ["setextradata", "global", "GUI/SuppressMessages", "all"]
      v.gui = true
      v.memory = 4096
      v.name = "Ubuntu Desktop 21.04"
    end

    ubuntu.vm.provider :vmware_fusion do |v|
      v.gui = true
      v.vmx["memsize"] = "4096"
      v.vmx["numvcpus"] = "2"
    end

    ubuntu.vm.provider :vmware_workstation do |v|
      v.gui = true
      v.vmx["memsize"] = "4096"
      v.vmx["numvcpus"] = "2"
    end
  end
end
