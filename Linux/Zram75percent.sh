#!/bin/sh

# Thanks: https://kienngd.github.io/how-to-use-zram-on-ubuntu-2404/

sudo apt update && sudo apt full-upgrade -y && sudo apt autoremove -y
sudo apt install zram-tools -y
sudo bash -c 'echo "ALGO=lz4" > /etc/default/zramswap'
sudo bash -c 'echo "PERCENT=75" >> /etc/default/zramswap'
sudo bash -c 'echo "PRIORITY=100" >> /etc/default/zramswap'
sudo systemctl enable zramswap && sudo systemctl start zramswap
echo " "
sudo zramctl
echo " "
echo " "
echo "All done!"
