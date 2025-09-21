#!/bin/sh

sudo apt update && sudo apt full-upgrade -y
sudo apt install curl -y && sudo apt autoremove -y
curl -s https://api.github.com/repos/Alex313031/thorium/releases/latest | grep "browser_download_url.*_SSE3.deb" | cut -d '"' -f 4 | xargs -n 1 curl -L -o thorium-browser_SSE3.deb
sudo apt install ./thorium-browser_SSE3.deb -y
rm thorium-browser_SSE3.deb
echo " "
echo " "
echo "All done!"
