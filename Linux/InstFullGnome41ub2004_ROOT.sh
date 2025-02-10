#!/bin/sh

echo "" > /etc/network/interfaces
add-apt-repository ppa:devacom/x11 -y && add-apt-repository ppa:devacom/gnome-41 -y
apt install ubuntu-desktop gnome-shell gnome-control-center gdebi neofetch gnome-tweaks menulibre nano curl wget -y
apt update && apt full-upgrade -y && apt autoremove -y
echo " "
echo " "
echo "add your username to sudoers:"
echo "usermod -aG sudo UsErNaMe"
echo "and reboot!"
echo " "
echo " "
