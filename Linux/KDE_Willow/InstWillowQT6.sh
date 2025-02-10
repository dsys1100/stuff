#!/bin/sh
 
wget https://github.com/dsys1100/stuff/raw/refs/heads/main/Linux/KDE_Willow/WillowQT6.zip -O /tmp/WillowQT6.zip
unzip /tmp/WillowQT6.zip -d "$HOME/.local/share/"
rm /tmp/WillowQT6.zip
echo " "
echo " "
echo "All done!"