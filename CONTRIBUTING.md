<!-- ⚠️ This README has been generated from the file(s) "./modules/docs/blueprint-contributing.md" ⚠️-->
[![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/aqua.png)](#contributing)

# ➤ Contributing

First of all, thanks for visiting this page 😊❤️! We are totally ecstatic that you may be considering contributing to this project. You should read this guide if you are considering creating a pull request.


[![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/aqua.png)](#table-of-contents)

## ➤ Table of Contents

* [➤ Contributing](#-contributing)
	* [➤ Code of Conduct](#-code-of-conduct)
	* [➤ Overview](#-overview)
		* [Virtualization Platforms](#virtualization-platforms)
	* [➤ Philosophy](#-philosophy)
	* [➤ Pull Requests](#-pull-requests)
	* [➤ Formatting the Template JSON](#-formatting-the-template-json)

[![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/aqua.png)](#code-of-conduct)

## ➤ Code of Conduct

This project and everyone participating in it is governed by the [Code of Conduct](https://github.com/atom/atom/blob/master/CODE_OF_CONDUCT.md). By participating, you are expected to uphold this code. Please report unacceptable behavior to [help@megabyte.space](mailto:help@megabyte.space).


[![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/aqua.png)](#overview)

## ➤ Overview

Our VM images aim to be minimal, performant, and pretty. They are minimal because they remove unnecessary files and are compressed before uploading them to VagrantUp. Our images are performant because we choose the right configurations. We also ensure there is a seemless experience by including the Plymouth boot loader.

A popular repository on GitHub called [chef/bento](https://github.com/chef/bento/tree/master/packer_templates) has already done most of the work we are trying to accomplish. They have Packer templates for everything we aim to support except Archlinux and Mac OS X. Since it has a huge following, updates are likely to be provided. We use chef/bento's source wherever possible. They provide shell scripts that do a lot of the setup needed to initialize boxes. In each of our repositories, you can see that we symlink into a chef/bento submodule. By doing this, we are able to receive updates directly from our upstream code provider.

However, chef/bento's work is not perfect for our use case. There are a few changes we make to each of our repositories. The `template.json` is reformatted to be neater and slightly easier to read. There are additional scripts we run to convert the distribution into a desktop environment. Ideally, five years from now, if you go to our VagrantUp repositories you will be able to browse through all the various releases in any OS distribution. Our goal is to accomplish this through automation by:

* Including the vagrant-cloud post-processor
* Leveraging [LatestOS](https://pypi.org/project/latestos/) to automatically detect the latest release of the Linux variants we build boxes for (This allows us to automatically have the latest upstream changes on our VagrantUp desktop images.)

### Virtualization Platforms

We aim to support the following virtualization platforms:

* Parallels
* Hyper-V
* KVM
* VirtualBox
* VMWare


[![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/aqua.png)](#philosophy)

## ➤ Philosophy

We created these images because the desktop versions of VagrantUp boxes are sparse. During development it's useful to be able to navigate through an operating system using a GUI. The VM images should be:

* Minimal and include no bloatware
* Small in size so people can download/provision their VM quicker
* Look pretty (e.g. the Plymouth loader should be installed so that the boot screen looks good)
* Be performant

In general, the VM should be a pleasure to use.


[![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/aqua.png)](#pull-requests)

## ➤ Pull Requests

All pull requests should be associated with issues. You can find the [issues board on GitLab](https://gitlab.com/megabyte-space/packer/Base-Ubuntu-Desktop/-/issues). The pull requests should be made to [the GitLab repository](https://gitlab.com/megabyte-space/packer/Base-Ubuntu-Desktop) instead of the [GitHub repository](https://github.com/ProfessorManhattan/packer-Base-Ubuntu-Desktop). This is because we use GitLab as our primary repository and mirror the changes to GitHub for the community.


[![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/aqua.png)](#formatting-the-template-json)

## ➤ Formatting the Template JSON

In each of our Packer repositories, you will see a file named `template.json`. This serves as the configuration file that Packer uses when building our boxes. Please follow the guidelines below when formatting a `template.json` file:

* The `"variables"` section should be at the top of the `template.json` file
* Make sure the variable names are consistent across [our Packer repositories](https://gitlab.com/megabyte-space/packer).
* Prefer naming the variables after the section they will be placed.
	* For example, the variable used for `ssh_password` should also be named `ssh_password` so it looks like this: `"ssh_password": "{{ user \`ssh_password\` }}"`.
* All the JSON objects should be in alphabetical order with the following exceptions:
	* The `"variables"` section should be at the top of the file.
	* The `"type"` field should be at the top of its section.
* All environment variables should be referenced in capitals so `http_proxy` should be `HTTP_PROXY` (the actual user variables in the `variables` section should all be lowercased, however).
* Any text that is shared between multiple builders should be stored as a variable. The only exception is data that is specific to each builder like shutdown command.
* Use the https://mirror.arizona.edu as the download location.
* All the variables should start with {{ and then a space. The same is true for the opposite side of the variable.
	* **GOOD:** `{{ user 'variable' }}`
	* **BAD:** `{{user 'variable'}}`
* In general, the `template.json` file should look nearly identical across our different Packer repositories.

