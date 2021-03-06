#!/bin/sh -eux

echo "Install the tasksel manager utility"
sudo apt-get install -y tasksel

echo "Install minimal Desktop environment"
sudo apt install -y ubuntu-desktop --no-install-recommends

echo "Rebooting"
sudo reboot
