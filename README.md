<!-- ⚠️ This README has been generated from the file(s) ".config/docs/blueprint-readme-desktop.md" ⚠️--><div align="center">
  <center>
    <a href="https://github.com/ProfessorManhattan/packer-ubuntu-desktop">
      <img width="148" height="148" alt="Ubuntu Desktop logo" src="https://gitlab.com/megabyte-labs/packer/ubuntu-desktop/-/raw/master/logo.png" />
    </a>
  </center>
</div>
<div align="center">
  <center><h1 align="center"><i></i>Ubuntu Desktop Template for Packer<i></i></h1></center>
  <center><h4 style="color: #18c3d1;">A configuration managed by <a href="https://megabyte.space" target="_blank">Megabyte Labs</a></h4><i></i></center>
</div>

<div align="center">
  <a href="https://megabyte.space" title="Megabyte Labs homepage" target="_blank">
    <img alt="Homepage" src="https://img.shields.io/website?down_color=%23FF4136&down_message=Down&label=Homepage&logo=home-assistant&logoColor=white&up_color=%232ECC40&up_message=Up&url=https%3A%2F%2Fmegabyte.space&style=for-the-badge" />
  </a>
  <a href="https://github.com/ProfessorManhattan/packer-ubuntu-desktop/blob/master/docs/CONTRIBUTING.md" title="Learn about contributing" target="_blank">
    <img alt="Contributing" src="https://img.shields.io/badge/Contributing-Guide-0074D9?logo=github-sponsors&logoColor=white&style=for-the-badge" />
  </a>
  <a href="https://app.slack.com/client/T01ABCG4NK1/C01NN74H0LW/details/" title="Chat with us on Slack" target="_blank">
    <img alt="Slack" src="https://img.shields.io/badge/Slack-Chat-e01e5a?logo=slack&logoColor=white&style=for-the-badge" />
  </a>
  <a href="https://github.com/ProfessorManhattan/packer-ubuntu-desktop" title="GitHub mirror" target="_blank">
    <img alt="GitHub" src="https://img.shields.io/badge/Mirror-GitHub-333333?logo=github&style=for-the-badge" />
  </a>
  <a href="https://gitlab.com/megabyte-labs/packer/ubuntu-desktop" title="GitLab repository" target="_blank">
    <img alt="GitLab" src="https://img.shields.io/badge/Repo-GitLab-fc6d26?logo=data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgAQMAAABJtOi3AAAABlBMVEUAAAD///+l2Z/dAAAAAXRSTlMAQObYZgAAAHJJREFUCNdNxKENwzAQQNEfWU1ZPUF1cxR5lYxQqQMkLEsUdIxCM7PMkMgLGB6wopxkYvAeI0xdHkqXgCLL0Beiqy2CmUIdeYs+WioqVF9C6/RlZvblRNZD8etRuKe843KKkBPw2azX13r+rdvPctEaFi4NVzAN2FhJMQAAAABJRU5ErkJggg==&style=for-the-badge" />
  </a>
</div>
<br/>
<div align="center">
  <a href="https://www.npmjs.com/package/@megabytelabs/packer-ubuntu-desktop" title="Version 1.0.0" target="_blank">
    <img alt="Version: 1.0.0" src="https://img.shields.io/badge/version-1.0.0-blue.svg?cacheSeconds=2592000&logo=data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgAQMAAABJtOi3AAAABlBMVEUAAAD///+l2Z/dAAAAAXRSTlMAQObYZgAAACNJREFUCNdjIACY//+BEp9hhM3hAzYQwoBIAqEDYQrCZLwAAGlFKxU1nF9cAAAAAElFTkSuQmCC&style=flat-square" />
  </a>
  <a href="https://gitlab.com/megabyte-labs/packer/ubuntu-desktop/-/commits/master" title="GitLab CI build status" target="_blank">
    <img alt="Build status" src="https://img.shields.io/gitlab/pipeline-status/megabyte-labs/npm/desktop/ubuntu-desktop?branch=master&label=build&logo=gitlab&logoColor=white&style=flat-square">
  </a>
  <a href="https://www.npmjs.com/package/@megabytelabs/packer-ubuntu-desktop" title="Dependency status reported by Depfu" target="_blank">
    <img alt="Dependency status reported by Depfu" src="https://img.shields.io/depfu/megabyte-labs/customPackageName?logo=codeforces&logoColor=white&style=flat-square&logo=npm" />
  </a>
  <a href="https://www.npmjs.com/package/@megabytelabs/packer-ubuntu-desktop" title="Zip file size" target="_blank">
    <img alt="Zip file size" src="https://img.shields.io/bundlephobia/minzip/@megabytelabs/packer-ubuntu-desktop?style=flat-square&logo=npm&logoColor=white" />
  </a>
  <a href="https://www.npmjs.com/package/@megabytelabs/packer-ubuntu-desktop" title="Total downloads of @megabytelabs/packer-ubuntu-desktop on npmjs.org" target="_blank">
    <img alt="Total downloads of @megabytelabs/packer-ubuntu-desktop on npmjs.org" src="https://img.shields.io/npm/dt/@megabytelabs/packer-ubuntu-desktop?style=flat-square&logo=npm&logoColor=white" />
  </a>
  <a href="https://snyk.io/advisor/npm-package/@megabytelabs/packer-ubuntu-desktop" title="Number of vulnerabilities from Snyk scan on @megabytelabs/packer-ubuntu-desktop" target="_blank">
    <img alt="Number of vulnerabilities from Snyk scan on @megabytelabs/packer-ubuntu-desktop" src="https://img.shields.io/snyk/vulnerabilities/npm/@megabytelabs/packer-ubuntu-desktop?style=flat-square&logo=snyk&logoColor=white" />
  </a>
  <a href="website.documentation/packer" target="_blank">
    <img alt="Documentation" src="https://img.shields.io/badge/documentation-yes-brightgreen.svg?logo=readthedocs&logoColor=white&style=flat-square" />
  </a>
  <a href="https://github.com/ProfessorManhattan/packer-ubuntu-desktop/blob/master/LICENSE" target="_blank">
    <img alt="License: MIT" src="https://img.shields.io/badge/license-MIT-yellow.svg?logo=data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgAQMAAABJtOi3AAAABlBMVEUAAAD///+l2Z/dAAAAAXRSTlMAQObYZgAAAHpJREFUCNdjYOD/wMDAUP+PgYHxhzwDA/MB5gMM7AwMDxj4GBgKGGQYGCyAEEgbMDDwAAWAwmk8958xpIOI5zKH2RmOyhxmZjguAiKmgIgtQOIYmFgCIp4AlaQ9OczGkJYCJEAGgI0CGwo2HmwR2Eqw5SBnNIAdBHYaAJb6KLM15W/CAAAAAElFTkSuQmCC&style=flat-square" />
  </a>
</div>

> </br><h3 align="center">**An automated Ubuntu Desktop (currently, version 21.04) Packer project that builds boxes using the latest Ubuntu Live Server release**</h3></br>

<a href="#table-of-contents" style="width:100%"><img style="width:100%" src="https://gitlab.com/megabyte-labs/assets/-/raw/master/png/aqua-divider.png" /></a>

## Table of Contents

- [Overview](#overview)
- [Requirements](#requirements)
  - [Developer Requirements](#developer-requirements)
- [Quick Start](#quick-start)
- [Creating Your Own Box](#creating-your-own-box)
- [Updating Your Box](#updating-your-box)
- [Contributing](#contributing)
- [License](#license)

<a href="#overview" style="width:100%"><img style="width:100%" src="https://gitlab.com/megabyte-labs/assets/-/raw/master/png/aqua-divider.png" /></a>

## Overview

This project houses configurations that can be used to build performant Ubuntu Desktop images. It uses the Ubuntu Desktop Live image as a base, uses Packer to automate the build process, and then sets the image up using some [Bento scripts](https://github.com/chef/bento/tree/main/packer_templates/ubuntu/scripts) which take care of optimizing the image for your system (i.e. setting up SSH with the Vagrant default public key, setting up GuestAdditions for VirtualBox, etc.). This project is intended to be used to create desktop images that you would launch from your main desktop using a GUI. If you are looking for headless images, you should either use [Bento's server images](https://app.vagrantup.com/bento). You might also have some luck browsing through our [Packer projects](https://gitlab.com/megabyte-labs/packer).

<a href="#requirements" style="width:100%"><img style="width:100%" src="https://gitlab.com/megabyte-labs/assets/-/raw/master/png/aqua-divider.png" /></a>

## Requirements

If you are simply including this library in your project, all you need is a recent version of Node.js. **[Node.js >14.18.0](repository.project.node)** is sometimes required and is the only version range we actively support. Albeit, it is highly probable that lower versions will work as well depending on the requirements that this project imports.

### Developer Requirements

The following versions of Node.js and Python are required for development:

- **[Node.js >14.18.0](repository.project.node)**
- **[Python >3.10.0](repository.project.python)**

Other versions may work, but only the above versions are supported. Most development dependencies are installed automatically by our `Taskfile.yml` set-up (even Node.js and Python). Run `bash start.sh` to install **[Bodega](https://github.com/ProfessorManhattan/Bodega)** (an improved fork of [go-task](https://github.com/go-task/task)) and run the initialization sequence. The taskfiles will automatically install dependencies as they are needed, based on what development tasks you are running. For more information, check out the [CONTRIBUTING.md](https://github.com/ProfessorManhattan/packer-ubuntu-desktop/blob/main/docs/CONTRIBUTING.md) or simply run:

```shell
npm run help
```

`npm run help` will ensure Bodega is installed and then open an interactive dialog where you can explore and learn about various developer commands.

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
