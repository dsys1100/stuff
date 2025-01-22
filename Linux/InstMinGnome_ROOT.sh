#!/bin/sh

apt update && apt full-upgrade -y && apt autoremove -y
apt install gnome-core network-manager-gnome file-roller sudo gdebi neofetch gnome-tweaks menulibre nano curl wget -y
echo " "
echo " "
echo "add your username to sudoers:"
echo "usermod -aG sudo UsErNaMe"
echo "and reboot!"
echo " "
echo " "