## Overview

This repository contains the source code used to automatically build minimal {{ variables.description }} VM images. The build process closely imitates the same process used by [chef/bento](https://github.com/chef/bento). In fact, you will see that most of the `scripts/` folder is symlinked to a chef/bento submodule.

This repository automates most of the process of keeping our [{{ variables.description }} VM images](https://app.vagrantup.com/{{ variables.vagrantup_user }}/boxes/{{ variables.box_basename }}) up-to-date with the latest upstream source by:

- Using the vagrant-cloud post-processor to automatically upload the box after it is built
- Automating the retrieval of the source ISO file and checksum file by using another project of ours called [LatestOS](https://pypi.org/project/latestos/)
- Running the Packer build with a cronjob

### Supported Virtualization Platforms

This project supports creating boxes for the following virtualization platforms:

- [Hyper-V]({{ repository.group.ansible_roles }}/hyperv) <!-- SUPPORTED_OS_HYPERV -->
- [KVM]({{ repository.group.ansible_roles }}/kvm) <!-- SUPPORTED_OS_KVM -->
- [Parallels]({{ repository.group.ansible_roles }}/parallels) <!-- SUPPORTED_OS_PARALLELS -->
- [VirtualBox]({{ repository.group.ansible_roles }}/virtualbox) <!-- SUPPORTED_OS_VIRTUALBOX -->
- [VMWare]({{ repository.group.ansible_roles }}/vmware) <!-- SUPPORTED_OS_VMWARE -->
