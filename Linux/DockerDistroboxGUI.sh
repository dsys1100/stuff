#!/bin/sh

sudo apt-get update && sudo apt full-upgrade -y && sudo apt autoremove -y
sudo apt-get install ca-certificates curl -y
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y
sudo usermod -aG docker $USER
sudo systemctl enable docker.service
sudo systemctl enable containerd.service
sudo apt install libadwaita-1-0 distrobox -y
cd /tmp/
URL=$(curl -v https://api.github.com/repos/Dvlv/BoxBuddyRS/releases/latest 2>&1 | grep -v ant | grep browser_download_url | grep -v .asc | cut -d '"' -f 4) && wget $URL && ZIP="$(find . -maxdepth 1 -name "BoxBuddy-*.zip")" && unzip -qq $ZIP
cd BoxBuddy-*/
./install.sh
cd /tmp/
rm -r BoxBuddy*
echo ""
echo "Logoff/reboot required for configure all ("
