<!-- ⚠️ This README has been generated from the file(s) "./modules/docs/blueprint-readme.md" ⚠️--><h1 align="center">Packer Template for Ubuntu Desktop</h1>

<div align="center">
  <h4>
    <a href="https://app.vagrantup.com/ProfessorManhattan">VagrantUp Profile</a>
    <span> | </span>
    <a href="https://app.vagrantup.com/ProfessorManhattan/boxes/Base-Ubuntu-Desktop">VagrantUp Box</a>
    <span> | </span>
    <a href="https://gitlab.com/megabyte-space/packer/Base-Ubuntu-Desktop/-/blob/master/CONTRIBUTING.md">Contributing</a>
    <span> | </span>
    <a href="https://app.slack.com/client/T01ABCG4NK1/C01NN74H0LW/details/">Chat</a>
    <span> | </span>
    <a href="https://megabyte.space">Website</a>
  </h4>
</div>
<p style="text-align:center;">
  <img alt="Version" src="https://img.shields.io/badge/version-20.04.2-blue.svg?cacheSeconds=2592000" />
  <a href="https://megabyte.space/docs/packer" target="_blank">
    <img alt="Documentation" src="https://img.shields.io/badge/documentation-yes-brightgreen.svg" />
  </a>
  <a href="https://gitlab.com/megabyte-space/packer/Base-Ubuntu-Desktop/-/raw/master/LICENSE" target="_blank">
    <img alt="License: MIT" src="https://img.shields.io/badge/License-MIT-yellow.svg" />
  </a>
  <a href="https://twitter.com/PrfssrManhattan" target="_blank">
    <img alt="Twitter: PrfssrManhattan" src="https://img.shields.io/twitter/follow/@PrfssrManhattan.svg?style=social" />
  </a>
</p>

<p align="center">
  <b>Packer project that builds minimal VagrantUp Ubuntu Desktop boxes</b></br>
</p>


[![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/aqua.png)](#table-of-contents)

## ➤ Table of Contents

* [➤ Overview](#-overview)
	* [Supported Virtualization Platforms](#supported-virtualization-platforms)
* [➤ Requirements](#-requirements)
* [➤ Quick Start](#-quick-start)
* [➤ Creating Your Own Box](#-creating-your-own-box)
* [➤ Updating Your Box](#-updating-your-box)
* [➤ Contributing](#-contributing)
* [➤ License](#-license)

[![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/aqua.png)](#overview)

## ➤ Overview

This repository contains the source code used to automatically build minimal Ubuntu Desktop VM images. The build process closely imitates the same process used by [chef/bento](https://github.com/chef/bento). In fact, you will see that most of the `scripts/` folder is symlinked to a chef/bento submodule.

This repository automates most of the process of keeping our Ubuntu Desktop VM images up-to-date with the latest upstream source by:

* Using the vagrant-cloud post-processor to automatically upload the box after it is built
* Automating the retrieval of the source ISO file and checksum file by using another project of ours called [LatestOS](https://pypi.org/project/latestos/)

### Supported Virtualization Platforms

Most of our repositories support creating boxes for the following virtualization platforms:

* KVM
* Hyper-V
* Parallels
* VirtualBox
* VMWare

You can check out exactly what platforms this repository supports by browsing through the types in the `"builders"` section of the `template.json` file found in the root of this repository.


[![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/aqua.png)](#requirements)

## ➤ Requirements

* At least one of the above virtualization platforms installed
* [Packer](https://learn.hashicorp.com/tutorials/packer/getting-started-install)
* [Vagrant](https://www.vagrantup.com/docs/installation)


[![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/aqua.png)](#quick-start)

## ➤ Quick Start

If you have VirtualBox and Vagrant installed, you can quickly spin up the finished product of this repository by running the following code in the root directory of this repository:

```shell
vagrant up
```

The default username and password are both *vagrant*.


[![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/aqua.png)](#creating-your-own-box)

## ➤ Creating Your Own Box

You can quickly use this project to create your own minimal Ubuntu Desktop box by:

1. Creating a box on VagrantUp titled Base-Ubuntu-Desktop - *Note: You can change the title by modifying the `"box_basename"` variable in `template.json`*
2. Changing the `"vagrantup_user"` variable in `template.json` to your VagrantUp username
3. Running the following code

```shell
bash .update.sh
export VAGRANT_CLOUD_TOKEN=YourTokenHere
packer build -only=virtualbox-iso template.json
```

The example above will build a VirtualBox Ubuntu Desktop box and upload it to your VagrantUp box repository *(that you have to create before running the script that is above)*. If you want to build the box for another provider then look at the `template.json` in the `"builders"` section for the types of boxes you can create (e.g. virtualbox-iso, vmware-iso, parallels-iso, qemu).

If you do not want your box to be automatically uploaded to VagrantUp after you build it with Packer then you will need to remove the `"vagrant-cloud"` section under `"post-processors"`.


[![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/aqua.png)](#updating-your-box)

## ➤ Updating Your Box

If a new release of the Ubuntu Desktop system is available, you can update your VagrantUp box. You can do this by changing the `"iso_checksum_url"`, `"iso_url"`, and `"iso_version"` variables in the `template.json` file. After that, run `packer build -only=virtualbox-iso template.json` and you should be golden.

You can also automate the process of retrieving the latest ISO and checksum URL by leveraging our [LatestOS](https://pypi.org/project/latestos/) Python package. This can be accomplished by running the following code with Python and pip already installed:

```shell
pip3 install latestos
latestos ubuntu # Options include arch, centos, debian, fedora, and ubuntu
packer build -only=virtualbox-iso template.json
```


[![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/aqua.png)](#contributing)

## ➤ Contributing

Contributions, issues, and feature requests are welcome! Feel free to check the [issues page](https://gitlab.com/megabyte-space/packer/Base-Ubuntu-Desktop/-/issues). If you would like to contribute, please take a look at the [contributing guide](https://gitlab.com/megabyte-space/packer/Base-Ubuntu-Desktop/-/raw/master/CONTRIBUTING.md).

<details>
<summary>Sponsorship</summary>
<br/>
<blockquote>
<br/>
I create open source projects out of love. Although I have a job, shelter, and as much fast food as I can handle, it would still be pretty cool to be appreciated by the community for something I have spent a lot of time and money on. Please consider sponsoring me! Who knows? Maybe I will be able to quit my job and publish open source full time.
<br/><br/>Sincerely,<br/><br/>

***Brian Zalewski***<br/><br/>
</blockquote>

<a href="https://www.patreon.com/ProfessorManhattan">
  <img src="https://c5.patreon.com/external/logo/become_a_patron_button@2x.png" width="160">
</a>

</details>


[![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/aqua.png)](#license)

## ➤ License

Copyright © 2021 [Megabyte LLC](https://megabyte.space). This project is [MIT](https://gitlab.com/megabyte-space/packer/Base-Ubuntu-Desktop/-/raw/master/LICENSE) licensed.

