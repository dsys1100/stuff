#!/bin/sh

sudo apt update && sudo apt full-upgrade -y && sudo apt autoremove -y
sudo apt install open-vm-tools -y
sudo mkdir -p /media/host-shared/
sudo /usr/bin/vmhgfs-fuse .host:/ /media/host-shared/ -o subtype=vmhgfs-fuse,allow_other
sudo sh -c "echo '.host:/ /media/host-shared/ fuse.vmhgfs-fuse allow_other,defaults 0 0' >> /etc/fstab"
