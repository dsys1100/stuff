#!/bin/sh

sudo apt update && sudo apt install software-properties-common -y
sudo add-apt-repository ppa:mozillateam/ppa -y
echo '
Package: *
Pin: release o=LP-PPA-mozillateam
Pin-Priority: 1001
' | sudo tee /etc/apt/preferences.d/mozilla-firefox.pref
sudo apt update && sudo apt full-upgrade -y
sudo apt install firefox -y && sudo apt autoremove -y
echo " "
echo " "
echo "All done!"
