<!-- ⚠️ This README has been generated from the file(s) ".config/docs/blueprint-readme-desktop.md" ⚠️--><div align="center">
  <center>
    <a href="https://github.com/ProfessorManhattan/packer-ubuntu-desktop">
      <img width="148" height="148" alt="Ubuntu Desktop logo" src="https://gitlab.com/megabyte-labs/packer/ubuntu-desktop/-/raw/master/logo.png" />
    </a>
  </center>
</div>
<div align="center">
  <center><h1 align="center"><i></i>Ubuntu Desktop Template for Packer<i></i></h1></center>
  <center><h4 style="color: #18c3d1;"><i></i><a href="https://megabyte.space" target="_blank">Megabyte Labs</a></h4><i></i></center>
</div>

<div align="center">
  <h4 align="center">
    <a href="website.homepage" title="Megabyte Labs homepage" target="_blank">
      <img src="https://gitlab.com/megabyte-labs/assets/-/raw/master/svg/home-solid.svg" />
    </a>
    <a href="https://gitlab.com/megabyte-labs/packer/ubuntu-desktop/-/blob/master/CONTRIBUTING.md" title="Learn about contributing" target="_blank">
      <img src="https://gitlab.com/megabyte-labs/assets/-/raw/master/svg/contributing-solid.svg" />
    </a>
    <a href="chat_url" title="Slack chat room" target="_blank">
      <img src="https://gitlab.com/megabyte-labs/assets/-/raw/master/svg/chat-solid.svg" />
    </a>
    <a href="ProfessorManhattan/packer-ubuntu-desktop" title="GitHub mirror" target="_blank">
      <img src="https://gitlab.com/megabyte-labs/assets/-/raw/master/svg/github-solid.svg" />
    </a>
    <a href="https://gitlab.com/megabyte-labs/packer/ubuntu-desktop" title="GitLab repository" target="_blank">
      <img src="https://gitlab.com/megabyte-labs/assets/-/raw/master/svg/gitlab-solid.svg" />
    </a>
  </h4>
  <p align="center">
    <a href="https://gitlab.com/megabyte-labs/npm/ubuntu-desktop" target="_blank">
      <img alt="Version: 1.0.0" src="https://img.shields.io/badge/version-1.0.0-blue.svg?cacheSeconds=2592000" />
    </a>
    <a href="https://gitlab.com/megabyte-labs/packer/ubuntu-desktop/commits/master" target="_blank">
      <img alt="Pipeline status" src="https://gitlab.com/megabyte-labs/packer/ubuntu-desktop/badges/master/pipeline.svg">
    </a>
    <a href="https://gitlab.com/megabyte-labs/packer/ubuntu-desktop" target="_blank">
      <img alt="Last commit date" src="https://img.shields.io/github/last-commit/profile.github_user/packer-ubuntu-desktop?logo=git&logoColor=white&style=for-the-badge" />
    </a>
    <a href="website.documentation/packer" target="_blank">
      <img alt="Documentation" src="https://img.shields.io/badge/documentation-yes-brightgreen.svg?style=for-the-badge" />
    </a>
    <a href="https://gitlab.com/megabyte-labs/packer/ubuntu-desktop/-/raw/master/LICENSE" target="_blank">
      <img alt="License: MIT" src="https://img.shields.io/badge/license-MIT-yellow.svg?style=for-the-badge" />
    </a>
  </p>
</div>

> </br><h3 align="center">**An automated Ubuntu Desktop (currently, version 21.04) Packer project that builds boxes using the latest Ubuntu Live Server release**</h3></br>

<!--TERMINALIZER![terminalizer_title](https://gitlab.com/megabyte-labs/ansible-roles/role_name/-/raw/master/.demo.gif)TERMINALIZER-->

<a href="#table-of-contents" style="width:100%"><img style="width:100%" src="https://gitlab.com/megabyte-labs/assets/-/raw/master/png/aqua-divider.png" /></a>

## Table of Contents

- [Overview](#overview)
  - [Supported Virtualization Platforms](#supported-virtualization-platforms)
- [Requirements](#requirements)
- [Quick Start](#quick-start)
- [Creating Your Own Box](#creating-your-own-box)
- [Updating Your Box](#updating-your-box)
- [Contributing](#contributing)
- [License](#license)

<a href="#overview" style="width:100%"><img style="width:100%" src="https://gitlab.com/megabyte-labs/assets/-/raw/master/png/aqua-divider.png" /></a>

## Overview

This repository contains the source code used to automatically build minimal variables.description VM images. The build process closely imitates the same process used by [chef/bento](https://github.com/chef/bento). In fact, you will see that most of the `scripts/` folder is symlinked to a chef/bento submodule.

This repository automates most of the process of keeping our [variables.description VM images](https://app.vagrantup.com/variables.vagrantup_user/boxes/variables.box_basename) up-to-date with the latest upstream source by:

- Using the vagrant-cloud post-processor to automatically upload the box after it is built
- Automating the retrieval of the source ISO file and checksum file by using another project of ours called [LatestOS](https://pypi.org/project/latestos/)
- Running the Packer build with a cronjob

### Supported Virtualization Platforms

This project supports creating boxes for the following virtualization platforms:

- [Hyper-V](https://gitlab.com/megabyte-labs/ansible-roles/hyperv) <!-- SUPPORTED_OS_HYPERV -->
- [KVM](https://gitlab.com/megabyte-labs/ansible-roles/kvm) <!-- SUPPORTED_OS_KVM -->
- [Parallels](https://gitlab.com/megabyte-labs/ansible-roles/parallels) <!-- SUPPORTED_OS_PARALLELS -->
- [VirtualBox](https://gitlab.com/megabyte-labs/ansible-roles/virtualbox) <!-- SUPPORTED_OS_VIRTUALBOX -->
- [VMWare](https://gitlab.com/megabyte-labs/ansible-roles/vmware) <!-- SUPPORTED_OS_VMWARE -->

<a href="#requirements" style="width:100%"><img style="width:100%" src="https://gitlab.com/megabyte-labs/assets/-/raw/master/png/aqua-divider.png" /></a>

## Requirements

- At least one of the above virtualization platforms installed ([VirtualBox](https://gitlab.com/megabyte-labs/ansible-roles/virtualbox) is a good starting point if you do not already have one of the platforms installed)
- [Packer](https://gitlab.com/megabyte-labs/ansible-roles/packer)
- [Vagrant](https://gitlab.com/megabyte-labs/ansible-roles/vagrant)

<a href="#quick-start" style="width:100%"><img style="width:100%" src="https://gitlab.com/megabyte-labs/assets/-/raw/master/png/aqua-divider.png" /></a>

## Quick Start

If you have VirtualBox and Vagrant installed, you can quickly spin up the finished product of this repository by running the following code in the root directory of this repository:

```shell
vagrant up
```

The default username and password are both _vagrant_.

<a href="#creating-your-own-box" style="width:100%"><img style="width:100%" src="https://gitlab.com/megabyte-labs/assets/-/raw/master/png/aqua-divider.png" /></a>

## Creating Your Own Box

You can quickly use this project to create your own minimal variables.description box by:

1. Creating a box on VagrantUp titled variables.box_basename (Note: The VagrantUp box name should match the `"box_basename"` in the `template.json` file.)
2. Changing the `"vagrantup_user"` variable in `template.json` to your VagrantUp username
3. Acquiring a VagrantUp API token from the settings page
4. Running the following code

```shell
bash .start.sh # Ensures your repository is up-to-date
export VAGRANT_CLOUD_TOKEN=YourTokenHere
packer build -only=virtualbox-iso template.json
```

The example above will build a VirtualBox variables.description box and upload it to your VagrantUp box repository _(that you have to create before running the script that is above)_. If you want to build the box for another provider then look at the `template.json` in the `"builders"` section for the types of boxes you can create (e.g. `virtualbox-iso`, `vmware-iso`, `parallels-iso`, `qemu`).

If you do not want your box to be automatically uploaded to VagrantUp after you build it with Packer then you will need to remove the `"vagrant-cloud"` section under `"post-processors"`. The section is wrapped in a nested array. If you are removing the `vagrant-cloud` post-processor, then the section no longer has to be placed in a nested array.

<a href="#updating-your-box" style="width:100%"><img style="width:100%" src="https://gitlab.com/megabyte-labs/assets/-/raw/master/png/aqua-divider.png" /></a>

## Updating Your Box

If a new release of the variables.description system is available, you can update your VagrantUp box. You can do this by changing the `"iso_checksum_url"`, `"iso_url"`, and `"iso_version"` variables in the `template.json` file. After that, run `packer build -only=virtualbox-iso template.json` and you should be golden.

You can also automate the process of retrieving the latest ISO and checksum URL by leveraging our [LatestOS](https://pypi.org/project/latestos/) Python package. This can be accomplished by running the following code with Python and pip already installed:

```shell
pip3 install latestos
latestos variables.latestos_tag # Options include arch, centos, debian, fedora, and ubuntu
packer build -only=virtualbox-iso template.json
```

<a href="#contributing" style="width:100%"><img style="width:100%" src="https://gitlab.com/megabyte-labs/assets/-/raw/master/png/aqua-divider.png" /></a>

## Contributing

Contributions, issues, and feature requests are welcome! Feel free to check the [issues page](https://gitlab.com/megabyte-labs/packer/variables.box_basename/-/issues). If you would like to contribute, please take a look at the [contributing guide](https://gitlab.com/megabyte-labs/packer/variables.box_basename/-/blob/master/CONTRIBUTING.md).

<details>
<summary>Sponsorship</summary>
<br/>
<blockquote>
<br/>
I create open source projects out of love. Although I have a job, shelter, and as much fast food as I can handle, it would still be pretty cool to be appreciated by the community for something I have spent a lot of time and money on. Please consider sponsoring me! Who knows? Maybe I will be able to quit my job and publish open source full time.
<br/><br/>Sincerely,<br/><br/>

**_Brian Zalewski_**<br/><br/>

</blockquote>

<a href="ProfessorManhattan">
  <img src="https://c5.patreon.com/external/logo/become_a_patron_button@2x.png" width="160">
</a>

</details>

<a href="#license" style="width:100%"><img style="width:100%" src="https://gitlab.com/megabyte-labs/assets/-/raw/master/png/aqua-divider.png" /></a>

## License

Copyright © 2020-2021 [Megabyte LLC](https://megabyte.space). This project is [MIT](https://gitlab.com/megabyte-labs/packer/ubuntu-desktop/-/blob/master/LICENSE) licensed.
