#!/bin/sh

# Thanks:
# https://askubuntu.com/questions/1515938/how-to-fix-freezing-ubuntu-24-04-on-vmware-and-enable-accelerated-graphics

sudo add-apt-repository ppa:oibaf/graphics-drivers -y
sudo apt update && sudo apt upgrade -y
