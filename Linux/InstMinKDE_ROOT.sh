#!/bin/sh

echo "" > /etc/network/interfaces
apt update && apt full-upgrade -y && apt autoremove -y
apt install kde-plasma-desktop plasma-nm ark nano curl wget flatpak plasma-discover-backend-flatpak -y
sed -i 's/ENABLED=1/ENABLED=0/g' /etc/default/motd-news
pro config set apt_news=false
echo " "
echo " "
echo "add your username to sudoers:"
echo "usermod -aG sudo UsErNaMe"
echo "and reboot!"
echo " "
echo " "
