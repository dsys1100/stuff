#!/bin/sh

sudo sh -c 'echo "" > /etc/network/interfaces'
sudo apt update && sudo apt full-upgrade -y && sudo apt autoremove -y
sudo apt install xorg openbox picom obconf tint2 menu dbus-x11 xfce4-terminal thunar lxappearance volumeicon-alsa alsa-utils network-manager network-manager-gnome pavucontrol pipewire-audio qt5-style-plugins mousepad gsimplecal xdg-utils nano curl wget -y
echo "" >> .profile
echo "# start x session" >> .profile
echo "startx" >> .profile
echo "" >> .profile
mkdir -p ~/.config/openbox
cp /etc/xdg/openbox/menu.xml ~/.config/openbox/
sudo sed -i 's/GRUB_TIMEOUT=5/GRUB_TIMEOUT=0/g' /etc/default/grub
sudo sed -i 's/#GRUB_DISABLE_OS_PROBER=false/GRUB_DISABLE_OS_PROBER=true/g' /etc/default/grub
sudo sed -i 's/#GRUB_DISABLE_RECOVERY="true"/GRUB_DISABLE_RECOVERY=true/g' /etc/default/grub
sudo update-grub
echo " "
echo " "
echo "All done!"
