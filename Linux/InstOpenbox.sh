#!/bin/sh

sudo apt update && sudo apt full-upgrade -y && sudo apt autoremove -y
sudo apt install xorg openbox picom obconf tint2 menu dbus-x11 xfce4-terminal volumeicon-alsa alsa-utils network-manager network-manager-gnome pavucontrol pipewire-audio qt5-style-plugins -y
echo "" >> .profile
echo "# start x session" >> .profile
echo "startx" >> .profile
echo "" >> .profile
sudo sed -i 's/GRUB_TIMEOUT=5/GRUB_TIMEOUT=0/g' /etc/default/grub
sudo sed -i 's/#GRUB_DISABLE_OS_PROBER=false/GRUB_DISABLE_OS_PROBER=true/g' /etc/default/grub
sudo sed -i 's/#GRUB_DISABLE_RECOVERY="true"/GRUB_DISABLE_RECOVERY=true/g' /etc/default/grub
sudo update-grub
echo " "
echo " "
echo "All done!"
