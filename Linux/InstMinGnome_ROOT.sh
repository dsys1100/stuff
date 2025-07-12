#!/bin/sh

echo "" > /etc/network/interfaces
apt update && apt full-upgrade -y && apt autoremove -y
apt install gnome-core network-manager-gnome file-roller sudo gnome-tweaks gnome-shell-extension-manager menulibre nano curl wget flatpak -y
apt install --no-install-recommends gnome-software gnome-software-plugin-flatpak -y
apt install vanilla-gnome-default-settings vanilla-gnome-desktop -y
sed -i 's/ENABLED=1/ENABLED=0/g' /etc/default/motd-news
pro config set apt_news=false
echo " "
echo " "
echo "add your username to sudoers:"
echo "usermod -aG sudo UsErNaMe"
echo "and reboot!"
echo " "
echo " "
