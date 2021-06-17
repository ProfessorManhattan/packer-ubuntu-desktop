#!/bin/sh -eux

echo "Install the tasksel manager utility"
sudo apt install -y tasksel

echo "Install minimal Desktop environment"
sudo apt install -y ubuntu-desktop --no-install-recommends

echo "Install Plymouth"
sudo apt install -y plymouth plymouth-themes

echo "Ensure Grub has quiet splash setting"
sudo sed -i '/GRUB_CMDLINE_LINUX_DEFAULT/c\GRUB_CMDLINE_LINUX_DEFAULT="quiet splash"' /etc/default/grub

echo "Update Grub"
sudo update-grub

echo "Rebooting"
sudo reboot
