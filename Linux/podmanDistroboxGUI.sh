#!/bin/sh

sudo apt update && sudo apt full-upgrade -y && sudo apt autoremove -y
sudo apt install podman curl libadwaita-1-0 distrobox -y
cd /tmp/
URL=$(curl -v https://api.github.com/repos/Dvlv/BoxBuddyRS/releases/latest 2>&1 | grep -v ant | grep browser_download_url | grep -v .asc | cut -d '"' -f 4) && wget $URL && ZIP="$(find . -maxdepth 1 -name "BoxBuddy-*.zip")" && unzip -qq $ZIP
cd BoxBuddy-*/
./install.sh
cd /tmp/
rm -r BoxBuddy*
echo ""
echo "Logoff/reboot required for configure all ("
