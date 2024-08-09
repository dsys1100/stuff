#!/bin/sh
sudo apt update && sudo apt full-upgrade -y && sudo apt install curl unzip docker.io distrobox -y
cd /tmp/
URL=$(curl -v https://api.github.com/repos/Dvlv/BoxBuddyRS/releases/latest 2>&1 | grep -v ant | grep browser_download_url | grep -v .asc | cut -d '"' -f 4) && wget $URL && ZIP="$(find . -maxdepth 1 -name "BoxBuddy-*.zip")" && unzip -qq $ZIP
cd BoxBuddy-*/
./install.sh
cd /tmp/
rm -r BoxBuddy*

echo Logoff required for update icons(