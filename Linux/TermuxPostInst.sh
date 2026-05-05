#!/bin/sh

termux-change-repo
yes | pkg upgrade
pkg install root-repo -y
pkg install coreutils tsu curl wget nano openssh fastfetch zip unzip tar -y
echo "fastfetch --logo none" >> .bashrc
echo "sshd" >> .bashrc
echo 'ssh launched on port 8022 and "user:000"' > ../usr/etc/motd
echo 'stop ssh by typing "pkill sshd"' >> ../usr/etc/motd
echo "disable-file-view-receiver=true" >> ~/.termux/termux.properties
echo "disable-file-share-receiver=true" >> ~/.termux/termux.properties
printf "000\n000" | passwd
termux-reload-settings && termux-setup-storage
echo ""
echo "Ok! Reload termux session please"