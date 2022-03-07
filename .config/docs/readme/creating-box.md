## Creating Your Own Box

You can quickly use this project to create your own minimal {{ variables.description }} box by:

1. Creating a box on VagrantUp titled {{ variables.box_basename }} (Note: The VagrantUp box name should match the `"box_basename"` in the `template.json` file.)
2. Changing the `"vagrantup_user"` variable in `template.json` to your VagrantUp username
3. Acquiring a VagrantUp API token from the settings page
4. Running the following code

```shell
bash .start.sh # Ensures your repository is up-to-date
export VAGRANT_CLOUD_TOKEN=YourTokenHere
packer build -only=virtualbox-iso template.json
```

The example above will build a VirtualBox {{ variables.description }} box and upload it to your VagrantUp box repository _(that you have to create before running the script that is above)_. If you want to build the box for another provider then look at the `template.json` in the `"builders"` section for the types of boxes you can create (e.g. `virtualbox-iso`, `vmware-iso`, `parallels-iso`, `qemu`).

If you do not want your box to be automatically uploaded to VagrantUp after you build it with Packer then you will need to remove the `"vagrant-cloud"` section under `"post-processors"`. The section is wrapped in a nested array. If you are removing the `vagrant-cloud` post-processor, then the section no longer has to be placed in a nested array.
