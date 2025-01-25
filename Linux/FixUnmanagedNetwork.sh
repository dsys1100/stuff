#!/bin/sh

sudo sed -i 's/managed=false/managed=true/g' /etc/NetworkManager/NetworkManager.conf
echo " "
echo " "
echo "All done! Reboot required."