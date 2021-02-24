# Base Ubuntu Desktop

This repository contains the files necessary for building a minimal **Ubuntu desktop** that you can run with:

* Parallels
* Hyper-V
* KVM
* VirtualBox
* VMWare

The configuration file by default includes a Packer post-processor that automatically uploads the image to [VagrantUp](https://vagrantup.com). This compiled box is uploaded to the [ProfessorManhattan/Base-Ubuntu-Desktop](https://app.vagrantup.com/Megabyte/boxes/Ubuntu-Desktop) repository on VagrantUp.

The operating system is the **desktop version of Ubuntu** so you get a full GUI. The username and password are both *vagrant*.

## Requirements

* Any combination of the above virualization platforms
* Packer
* Vagrant (for spinning up the VM)

## Instructions

After cloning, go to the root of this project and run:

```
git submodule update --init --recursive
packer build -only=virtualbox-iso template.json
```
