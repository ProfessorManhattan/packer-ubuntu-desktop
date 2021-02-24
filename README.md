# Base Ubuntu Desktop

This repository contains the files necessary for building minimal **Ubuntu desktop** VM images for the following virtualization platforms:

* Parallels
* Hyper-V
* KVM
* VirtualBox
* VMWare

The configuration file by default includes a Packer post-processor that automatically uploads the image to [VagrantUp](https://vagrantup.com). This compiled box is uploaded to the [ProfessorManhattan/Base-Ubuntu-Desktop](https://app.vagrantup.com/ProfessorManhattan/boxes/Base-Ubuntu-Desktop) repository on VagrantUp but you can change it to be your own VagrantUp repository. If you would like to use this feature (and have your builds automatically uploaded to VagrantUp), you need to set the `VAGRANT_CLOUD_TOKEN` environment variable to your VagrantUp API key and also change the `vagrantup_user` variable in `template.json` to your VagrantUp username. If you do not want this feature then you will need to delete the section in `template.json` that says `"type": "vagrant-cloud"`.

The operating system is the **desktop version of Ubuntu** so you get a full GUI. The username and password are both *vagrant*.

## Requirements

* Any combination of the above virtualization platforms
* Packer
* Vagrant (for spinning up the VM)

## Instructions

After cloning (and setting the `vagrantup_user` variable in `template.json`), go to the root of this project and run:

```
VAGRANT_CLOUD_TOKEN={{ YourTokenHere }}
git submodule update --init --recursive
packer build -only=virtualbox-iso template.json
```

That will build and upload a VirtualBox image to VagrantUp. You can build/upload other variants of the image by replacing `virtualbox-iso` with the types which can be found in the `template.json` file.

## Updating to the Latest Version

We created a side project called [LatestOS](https://pypi.org/project/latestos/). It is a Python module that will automatically grab the latest OS version and populate `template.json` with the results. You can use this in combination with a cron job to automatically have your VagrantUp repository up-to-date with the latest upstream OS release. Further instructions can be found on the [LatestOS page](https://pypi.org/project/latestos/).