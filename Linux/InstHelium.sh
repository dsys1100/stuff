#!/bin/sh

sudo apt update && sudo apt full-upgrade -y && sudo apt autoremove -y
curl -fsSL https://justaguylinux.codeberg.page/butterrepo/key.asc | sudo gpg --dearmor -o /usr/share/keyrings/butterrepo.gpg
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/butterrepo.gpg] https://justaguylinux.codeberg.page/butterrepo stable main" | sudo tee /etc/apt/sources.list.d/butterrepo.list
sudo apt update && sudo apt full-upgrade -y && sudo apt autoremove -y
sudo apt install helium-browser -y
echo " "
echo " "
echo "All done!"