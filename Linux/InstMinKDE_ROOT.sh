#!/bin/sh

echo "" > /etc/network/interfaces
apt update && apt full-upgrade -y && apt autoremove -y
apt install kde-plasma-desktop plasma-nm ark gdebi neofetch nano curl wget -y
echo " "
echo " "
echo "add your username to sudoers:"
echo "usermod -aG sudo UsErNaMe"
echo "and reboot!"
echo " "
echo " "