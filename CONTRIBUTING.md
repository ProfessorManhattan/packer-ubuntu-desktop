# Packer Repository Contributing Guidelines

## Introduction

[chef/bento](https://github.com/chef/bento/tree/master/packer_templates) has already done most of the work we are trying to accomplish. They have Packer templates for everything except Archlinux and Mac OS X. Since it has a huge following, updates are likely to be provided. We will be using chef/bento as our upstream provider wherever possible. They provide shell scripts that do a lot of the setup we need to initialize boxes. In each of our repositories, we will include chef/bento as a submodule. By doing this, we will be able to symlink the shell scripts into our scripts folder. This repository serves as an example.

There are a few changes that need to be done. The first thing we will be doing is having one file named `template.json` in each OS family repository. Through automation, our vagrantup.com pages will (down the road) have the built boxes at all the different versions. This will be done automatically by using a project that another contractor made called [LatestOS](https://pypi.org/project/latestos/). The latest version of each Linux OS will be checked and compiled on a cron job on multiple machines so we can generate the assets for:

* Parallels
* Hyper-V
* KVM
* VirtualBox
* VMWare

For now, we are only worrying about VirtualBox.

## Formatting of `template.json`

Due to personal preference, I am extremely picky about the formatting of the `template.json` file. Please follow these guidelines when formatting the `template.json` file:

* Variables section should be put at the top - it's easier for developers to quickly understand what's going on
* Try to stick to the same variable names that are in this repository's `template.json`
* Prefer naming the variables after the section they will be placed.
	* For instance, the variable used for `ssh_password` should also be named `ssh_password` so it looks like this: `"ssh_password": "{{ user 'ssh_password' }}` where the 's are actually `s
* All the JSON objects should be in alphabetical order with the following exceptions
	* The `variables` section is at the top of its section
	* The `type` is at the top of its section
* All environment variables should be referenced in capitals so `http_proxy` should be `HTTP_PROXY` (the actual user variables in the `variables` section should all be lowercased, however)
* Any text that is shared between multiple builders should be stored as a variable. The only exception is data that is specific to each builder like shutdown command.
* Use the https://mirror.arizona.edu as the download location - please note that we are now using iso_checksum_url instead of iso_checksum now
* Make sure to include the new logic that is in this repository's template.json like the vagrant-cloud postprocessor (which is in a nested array) and the vm_name
* In general, compare the template.json you are working on to this repository's template.json and mimic it as much as possible
* All the variables should start with {{ and then a space. The same is true for the end.
	* GOOD: `{{ user 'variable' }}`
	* BAD: `{{user 'variable'}}` 

## Testing Instructions

Most of these images should work well with chef/bento's settings. However, to each machine we are adding a step that installs the desktop GUI. Include this step near the end before the `cleanup.sh` and `minimize.sh` if possible. If that breaks, then try right before `minimize.sh` and if that doesn't work include it as the last step.

Make sure you click around and open apps to make sure the OS is working as expected.