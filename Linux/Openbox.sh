#!/bin/bash
sudo apt update && sudo apt full-upgrade -y && sudo apt autoremove -y
sudo apt install kitty xorg openbox mc tint2 -y
echo "" >> .profile
echo "# start x session" >> .profile
echo "startx" >> .profile
echo "" >> .profile
sudo sed -i 's/GRUB_TIMEOUT=5/GRUB_TIMEOUT=2/g' /etc/default/grub
sudo update-grub
echo Ok!